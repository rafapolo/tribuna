#!/bin/bash
# = Tribuna =
# https://github.com/rafapolo/tribuna

source `dirname $0`/config.env

download() {
	# Download a file (if it does not exist locally)
	url="$1"
	wget -nc "$url"
}

uncompress() {
	# Uncompress Zip or RAR archives into a directory using the CP437 encoding
	# (extended US-ASCII, used in Windows)
	filename="$1"  # Archive to be uncompressed
	destination="$2"  # Must be a directory
	encoding="CP437"

	# Some ".zip" files are actually RAR archives, but `unar` will
	# automatically identify the file type and deal with it for us
	unar -f -e $encoding -o "$destination" "$filename"
}

clean() {
	# Clean CSV files: remove null, spaces, semi-colon and non valid extra quotes
	ano="$1"
	sh ../scripts/clean_csv/clean_$ano.sh
}

start=`date +%s`

# Check if all commands required to run this script are available
CMDS="wget unar mysql"
for i in $CMDS; do
	command -v $i >/dev/null && continue || { echo "=> install $i"; exit 1; }
done

# test MySQL database
test_mysql=`mysqladmin -u$DB_USER -p$DB_PASS -h$DB_HOST ping 2>&1`
case $test_mysql in
  *failed*) echo "=> MySQL access failed!"; exit;;
  *alive*) echo "=> MySQL is Ok!";;
esac

# TSE source / ~2.4GB zips > ~26.3GB unzipped
url="http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas"
fontes_tse=(
  "$url/prestacao_contas_2002.zip"
  "$url/prestacao_contas_2004.zip"
  "$url/prestacao_contas_2006.zip"
  "$url/prestacao_contas_2008.zip"
  "$url/prestacao_contas_2010.zip"
  "$url/prestacao_final_2012.zip"
  "$url/prestacao_final_2014.zip"
  "$url/prestacao_contas_final_2016.zip"
)
# warning: se estrutura do ZIP ou headers mudarem, scripts/*.sql devem refletir mudanças.

mkdir -p fontes_tse;
cd fontes_tse;
for i in ${fontes_tse[*]}; do
	ano=$(echo "$i" | sed 's/[^0-9]*//g')
	file=${i##*/}
	mkdir -p $ano

	echo "=> baixando $ano..."
	download "$i"

	echo "=> descompactando $ano..."
	uncompress "$file" "$ano"

	echo "=> limpando $ano..."
	clean "$ano"
done
cd ..

# # Baixa dados pré-2002. Fonte: TSE, digitalizado por David Samuels e adaptado por Bruno Carazza
# 	echo "=> Baixando dados anteriores a 2002"

# wget -O pre2002.xlsx http://leisenumeros.com.br/wp-content/uploads/2016/06/bruno-carazza-dados-de-doac3a7c3b5es-eleitorais-de-1994-e-1998-por-david-samuels-ajustados-por-bruno-carazza.xlsx
# echo "=> Convertendo dados pré-2002 para CSV"
# xlsx2csv pre2002.xlsx > csv/pre2002.csv
# echo "=> Excluindo arquivo XLS"
# rm pre2002.xlsx

# Import data from CSV into the database
for sql in scripts/sql_load_csv/*.sql; do
	echo "=> loading $sql..."
	MYSQL_PWD=$DB_PASS mysql -vu$DB_USER -h$DB_HOST < $sql
done

# stats
gb=`du -sh | cut -f1`
end=`date +%s`
secs=$((end-start))
ls -alho
printf "=> $gb de dados processados em %dh:%dm:%ds\n" $(($secs/3600)) $(($secs%3600/60)) $(($secs%60))
echo "=> remova fontes_tse, se database Ok."
