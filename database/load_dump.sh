# TSE dump were splited
# split -b 45M tse.sql.tar.gz tse.part_

cat dump/tse.part* > tse.tar.gz
tar -zxvf tse.tar.gz
rm *.gz
