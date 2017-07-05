#!/bin/bash
# = Tribuna =
# https://github.com/rafapolo/tribuna

# setup your MySQL access before run
db_user="root"
db_pass="12**root**13"

# needs p7zip-rar wget mysql
CMDS="7z wget mysql"
for i in $CMDS; do
	command -v $i >/dev/null && continue || { echo "=> install $i"; exit 1; }
done

# test MySQL
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

echo "=> download fontes..."
mkdir fontes_tse;
cd fontes_tse;
for i in ${fontes_tse[*]}
do
  ano=$(echo "$i" | sed 's/[^0-9]*//g')
  mkdir $ano
  file=${i##*/}
  # download, se não existe
  wget -nc $i
  # detectar tipo de compressão: há ZIPs que são RARs!
  file $file
  extension=$(file $file | grep -Po " \w{3}+ " | sed 's/\ //g' | tr '[A-Z]' '[a-z]')
  # extrai com 7zip para resolver os problemas de encoding
  7z x -y -t$extension $file -o$ano
  # limpa e corrige .CSVs cagados: remove nulos, espaços e aspas extras inválidas
  echo "=> limpando $ano..."
  find $ano \( -name '*.csv' -o -name "*.CSV" -o -name "*.txt" -o -name "*.TXT" \) -print0 | xargs -0 \
   sed -e "s/\"\ /\"/g; s/\ \"/\"/g; s/\ +/\ /g; s/\"//g; s/#NULO#//g; s/#NULO//g" -i  --
done
cd ..

# gera db!
for sql in scripts/*.sql; do
  echo "=> loading $sql"; mysql -u$db_user -p$db_pass < $sql;
done

cd fontes_tse/
ls -alho
gb=`du -sh | cut -f1`
echo "=> total gerado: $gb";
# todo: perguntar se remove os GBs de fontes
# rm -rf ../fontes_tse
