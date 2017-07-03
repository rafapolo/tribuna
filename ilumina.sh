#!/bin/bash
# = Tribuna =
# https://github.com/rafapolo/tribuna

# install unrar unzip wget mysql-server

# setup your MySQL access before run
db_user="root"
db_pass="12**root**13"

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
#todo: salva MD5 dos arquivos, compara e avisa se TSE mudar fonte original.

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
  # extract sources
  LANG=pt_BR; unzip $file -d $ano
  # some zips are actually rar. pfff. try it too.
  unrar x $file $ano
  # limpa e corrige fontes cagadas
  echo "=> limpando $ano..."
  find $ano \( -name '*.csv' -o -name "*.CSV" -o -name "*.txt" -o -name "*.TXT" \) -print0 | xargs -0 \
   sed -e "s/\"\ /\"/g; s/\ \"/\"/g; s/\ +/\ /g; s/\"//g; s/#NULO#//g; s/#NULO//g" -i  --
done

# gera db!
# se estrutura do ZIP e headers mudarem, .sql deve refletir mudança
for file in scripts/*.sql; do echo "=> loading $file"; mysql -u$db_user -p$db_pass < $file; done

# todo: pergunta se remove fontes
# rm *.zip
