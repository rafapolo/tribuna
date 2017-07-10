#!/bin/bash
# = Tribuna =
# https://github.com/rafapolo/tribuna

start=`date +%s`

# setup your MySQL access before run
db_user="root"
db_pass="12**root**13"

# requires p7zip-rar wget mysql
CMDS="7z wget mysql"
for i in $CMDS; do
	command -v $i >/dev/null && continue || { echo "=> install $i"; exit 1; }
done
# make sure you have p7zip-rar installed!
# it decompress with correct pt_BR encoding.

# test MySQL database
test_mysql=$(mysqladmin -u$db_user -p$db_pass ping 2>&1)
echo $test_mysql
case $test_mysql in
  *failed*) echo "=> MySQL access failed!"; exit;;
  *alive*) echo "=> MySQL is Ok!";;
esac

# fontes do TSE / ~2.4GB zips > ~26.3GB unzipped
url="http://agencia.tse.jus.br/estatistica/sead/odsele/prestacao_contas/"
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
# todo: salva MD5 dos arquivos, compara e avisa se TSE mudar fonte original.
# warning: se estrutura do ZIP ou headers mudarem, scripts/*.sql devem refletir mudanças.

# echo "=> download fontes..."
# mkdir fontes_tse;
# cd fontes_tse;
# for i in ${fontes_tse[*]}
# do
#   ano=$(echo "$i" | sed 's/[^0-9]*//g')
#   mkdir $ano
#   file=${i##*/}
#   # download, se não existe
#   wget -nc $i
#   # detectar tipo de compressão: há ZIPs que são RARs!
#   file $file
#   extension=$(file $file | grep -Po " \w{3}+ " | sed 's/\ //g' | tr '[A-Z]' '[a-z]')
#   # extrai com 7zip para resolver os problemas de encoding
#   #7z x -y -t$extension $file -o$ano
# 	# limpa e corrige .CSVs cagados, se precisar
# 	# remove nulos, espaços, semi-vírgulas e aspas extras inválidas
# 	echo "=> limpando $ano..."
# 	sh ../scripts/clean_csv/clean_$ano.sh;
# done
# cd ..

# monta db!
export MYSQL_PWD=$db_pass
for sql in scripts/sql_load_csv/*.sql; do
  echo "=> loading $sql";
	mysql -u$db_user < $sql;
done

# stats
gb=`du -sh | cut -f1`
end=`date +%s`
secs=$((end-start))
ls -alho
printf "=> $gb de dados | processado em %dh:%dm:%ds\n" $(($secs/3600)) $(($secs%3600/60)) $(($secs%60))
echo "=> remova /fontes_tse, se database Ok."
# rm -rf ../fontes_tse
