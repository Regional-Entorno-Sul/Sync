cls
@echo off
echo:
echo ****************************************************************
echo Sync.bat - versao 1.2 - 13/02/2025
echo Diretoria da Macrorregional Nordeste
echo Regiao de saude Entorno Sul
echo Sincroniza a geracao dos arquivos de saida
echo das ferramentas DengueReport e ZikaChikFlash.
echo ****************************************************************
echo:
echo Exclui arquivos desatualizados do subdiretorio "dbf" e "csv" no DengueReport.
del /q c:\DengueReport\dbf\*.zip
del /q c:\DengueReport\dbf\*.dbf
del /q c:\sync\deng\csv\*.csv
echo Exclui arquivos desatualizados do subdiretorio "dbf" e "zip" no ZikaChikFlash.
del /q c:\ZikaChikFlash\dbf\*.dbf
del /q c:\ZikaChikFlash\zip\*.zip
echo Excluindo arquivos no formato htm desatualizados.
del /q c:\sync\chik\htm\*.htm
del /q c:\sync\deng\htm\*.htm
del /q c:\sync\zika\htm\*.htm
echo Excluindo arquivos no formato csv desatualizados.
del /q c:\sync\chik\csv\*.csv
del /q c:\sync\deng\csv\*.csv
del /q c:\sync\zika\csv\*.csv
echo Excluindo arquivos no formato xlsx desatualizados.
del /q c:\sync\chik\xlsx\*.xlsx
del /q c:\sync\deng\xlsx\*.xlsx
del /q c:\sync\zika\xlsx\*.xlsx
echo Excluindo outros arquivos desatualizados.
del /q c:\sync\chik\csv\*.xlsx
del /q c:\sync\deng\csv\*.xlsx
del /q c:\sync\zika\csv\*.xlsx
del /q c:\sync\join\*.htm
echo Excluindo arquivos temporarios da subpasta 'exe'.
ren c:\sync\exe\sed.exe temp.exe
del /q c:\sync\exe\sed*.*
ren c:\sync\exe\temp.exe sed.exe

echo Copia os arquivos atualizados no subdiretorio "dbf" no DengueReport.
copy /Y c:\Sync\deng\*.zip c:\DengueReport\dbf\*.zip
echo Copia os arquivos atualizados no subdiretorio "dbf" e "zip" no ZikaChikFlash.
copy /Y c:\Sync\chik\*.zip c:\ZikaChikFlash\zip\*.zip
copy /Y c:\Sync\zika\nindinet.dbf c:\ZikaChikFlash\dbf\nindinet.dbf
timeout /T 7
echo Roda o executavel do DengueReport.
cd\
cd c:\DengueReport\exe
DengueReport.exe 2025
echo Copia os arquivos de saida que foram gerados.
copy /Y c:\DengueReport\out\*.csv c:\Sync\deng\csv\*.csv
echo Roda o executavel do ZikaChikFlash para Chikungunya
echo e cola os arquivos de saida no diretorio apropriado do Sync.
cd\
cd c:\ZikaChikFlash\exe
ZikaChikFlash.exe 2025 5200258 --chik
copy /Y c:\ZikaChikFlash\out\chik_5200258_2025.csv c:\Sync\chik\csv
ZikaChikFlash.exe 2025 5205497 --chik
copy /Y c:\ZikaChikFlash\out\chik_5205497_2025.csv c:\Sync\chik\csv
ZikaChikFlash.exe 2025 5206206 --chik
copy /Y c:\ZikaChikFlash\out\chik_5206206_2025.csv c:\Sync\chik\csv
ZikaChikFlash.exe 2025 5212501 --chik
copy /Y c:\ZikaChikFlash\out\chik_5212501_2025.csv c:\Sync\chik\csv
ZikaChikFlash.exe 2025 5215231 --chik
copy /Y c:\ZikaChikFlash\out\chik_5215231_2025.csv c:\Sync\chik\csv
ZikaChikFlash.exe 2025 5219753 --chik
copy /Y c:\ZikaChikFlash\out\chik_5219753_2025.csv c:\Sync\chik\csv
ZikaChikFlash.exe 2025 5221858 --chik
copy /Y c:\ZikaChikFlash\out\chik_5221858_2025.csv c:\Sync\chik\csv
echo Roda o executavel do ZikaChikFlash para Zika virus
echo e cola os arquivos de saida no diretorio apropriado do Sync.
ZikaChikFlash.exe 2025 5200258 --zika
copy /Y c:\ZikaChikFlash\out\zika_5200258_2025.csv c:\Sync\zika\csv
ZikaChikFlash.exe 2025 5205497 --zika
copy /Y c:\ZikaChikFlash\out\zika_5205497_2025.csv c:\Sync\zika\csv
ZikaChikFlash.exe 2025 5206206 --zika
copy /Y c:\ZikaChikFlash\out\zika_5206206_2025.csv c:\Sync\zika\csv
ZikaChikFlash.exe 2025 5212501 --zika
copy /Y c:\ZikaChikFlash\out\zika_5212501_2025.csv c:\Sync\zika\csv
ZikaChikFlash.exe 2025 5215231 --zika
copy /Y c:\ZikaChikFlash\out\zika_5215231_2025.csv c:\Sync\zika\csv
ZikaChikFlash.exe 2025 5219753 --zika
copy /Y c:\ZikaChikFlash\out\zika_5219753_2025.csv c:\Sync\zika\csv
ZikaChikFlash.exe 2025 5221858 --zika
copy /Y c:\ZikaChikFlash\out\zika_5221858_2025.csv c:\Sync\zika\csv
echo
echo Renomeia os arquivos da subpasta "deng\csv".
cd\
cd sync\deng\csv
ren modelo2_*.csv dengon_*.csv
echo
echo Transforma os arquivos de Chikungunya no formato csv para html.
cd\
cd sync\exe
csv2htm.exe c:/sync/chik/csv/chik_5200258_2025.csv c:/sync/chik/htm/chik_5200258_2025.htm
csv2htm.exe c:/sync/chik/csv/chik_5205497_2025.csv c:/sync/chik/htm/chik_5205497_2025.htm
csv2htm.exe c:/sync/chik/csv/chik_5206206_2025.csv c:/sync/chik/htm/chik_5206206_2025.htm
csv2htm.exe c:/sync/chik/csv/chik_5212501_2025.csv c:/sync/chik/htm/chik_5212501_2025.htm
csv2htm.exe c:/sync/chik/csv/chik_5215231_2025.csv c:/sync/chik/htm/chik_5215231_2025.htm
csv2htm.exe c:/sync/chik/csv/chik_5219753_2025.csv c:/sync/chik/htm/chik_5219753_2025.htm
csv2htm.exe c:/sync/chik/csv/chik_5221858_2025.csv c:/sync/chik/htm/chik_5221858_2025.htm

echo Insere uma tag HTML em cada arquivo de Chikungunya criado.
sed.exe -i "1i <h1>Chikungunya - Aguas Lindas de Goias - codigo:5200258</h1>" c:\sync\chik\htm\chik_5200258_2025.htm
sed.exe -i "1i <h1>Chikungunya - Cidade Ocidental - codigo:5205497</h1>" c:\sync\chik\htm\chik_5205497_2025.htm
sed.exe -i "1i <h1>Chikungunya - Cristalina - codigo:5206206</h1>" c:\sync\chik\htm\chik_5206206_2025.htm
sed.exe -i "1i <h1>Chikungunya - Luziania - codigo:5212501</h1>" c:\sync\chik\htm\chik_5212501_2025.htm
sed.exe -i "1i <h1>Chikungunya - Novo Gama - codigo:5215231</h1>" c:\sync\chik\htm\chik_5215231_2025.htm
sed.exe -i "1i <h1>Chikungunya - Santo Antonio do Descoberto - codigo:5219753</h1>" c:\sync\chik\htm\chik_5219753_2025.htm
sed.exe -i "1i <h1>Chikungunya - Valparaiso de Goias - codigo:5221858</h1>" c:\sync\chik\htm\chik_5221858_2025.htm

echo Transforma os arquivos de Dengue no formato csv para html.
csv2htm.exe c:/sync/deng/csv/dengon__aguas_lindas.csv c:/sync/deng/htm/dengon__aguas_lindas.htm
csv2htm.exe c:/sync/deng/csv/dengon__cid_ocid.csv c:/sync/deng/htm/dengon__cid_ocid.htm
csv2htm.exe c:/sync/deng/csv/dengon__cristalina.csv c:/sync/deng/htm/dengon__cristalina.htm
csv2htm.exe c:/sync/deng/csv/dengon__luziania.csv c:/sync/deng/htm/dengon__luziania.htm
csv2htm.exe c:/sync/deng/csv/dengon__novo_gama.csv c:/sync/deng/htm/dengon__novo_gama.htm
csv2htm.exe c:/sync/deng/csv/dengon__SAD.csv c:/sync/deng/htm/dengon__SAD.htm
csv2htm.exe c:/sync/deng/csv/dengon__valparaiso.csv c:/sync/deng/htm/dengon__valparaiso.htm

echo Insere uma tag HTML em cada arquivo de Dengue criado.
sed.exe -i "1i <h1>Dengue - Aguas Lindas de Goias - codigo:5200258</h1>" c:\sync\deng\htm\dengon__aguas_lindas.htm
sed.exe -i "1i <h1>Dengue - Cidade Ocidental - codigo:5205497</h1>" c:\sync\deng\htm\dengon__cid_ocid.htm
sed.exe -i "1i <h1>Dengue - Cristalina - codigo:5206206</h1>" c:\sync\deng\htm\dengon__cristalina.htm
sed.exe -i "1i <h1>Dengue - Luziania - codigo:5212501</h1>" c:\sync\deng\htm\dengon__luziania.htm
sed.exe -i "1i <h1>Dengue - Novo Gama - codigo:5215231</h1>" c:\sync\deng\htm\dengon__novo_gama.htm
sed.exe -i "1i <h1>Dengue - Santo Antonio do Descoberto - codigo:5219753</h1>" c:\sync\deng\htm\dengon__SAD.htm
sed.exe -i "1i <h1>Dengue - Valparaiso de Goias - codigo:5221858</h1>" c:\sync\deng\htm\dengon__valparaiso.htm

echo Transforma os arquivos de Zika no formato csv para html.
csv2htm.exe c:/sync/zika/csv/zika_5200258_2025.csv c:/sync/zika/htm/zika_5200258_2025.htm
csv2htm.exe c:/sync/zika/csv/zika_5205497_2025.csv c:/sync/zika/htm/zika_5205497_2025.htm
csv2htm.exe c:/sync/zika/csv/zika_5206206_2025.csv c:/sync/zika/htm/zika_5206206_2025.htm
csv2htm.exe c:/sync/zika/csv/zika_5212501_2025.csv c:/sync/zika/htm/zika_5212501_2025.htm
csv2htm.exe c:/sync/zika/csv/zika_5215231_2025.csv c:/sync/zika/htm/zika_5215231_2025.htm
csv2htm.exe c:/sync/zika/csv/zika_5219753_2025.csv c:/sync/zika/htm/zika_5219753_2025.htm
csv2htm.exe c:/sync/zika/csv/zika_5221858_2025.csv c:/sync/zika/htm/zika_5221858_2025.htm

echo Insere uma tag HTML em cada arquivo de Zika criado.
sed.exe -i "1i <h1>Zika virus - Aguas Lindas de Goias - codigo:5200258</h1>" c:\sync\zika\htm\zika_5200258_2025.htm
sed.exe -i "1i <h1>Zika virus - Cidade Ocidental - codigo:5205497</h1>" c:\sync\zika\htm\zika_5205497_2025.htm
sed.exe -i "1i <h1>Zika virus - Cristalina - codigo:5206206</h1>" c:\sync\zika\htm\zika_5206206_2025.htm
sed.exe -i "1i <h1>Zika virus - Luziania - codigo:5212501</h1>" c:\sync\zika\htm\zika_5212501_2025.htm
sed.exe -i "1i <h1>Zika virus - Novo Gama - codigo:5215231</h1>" c:\sync\zika\htm\zika_5215231_2025.htm
sed.exe -i "1i <h1>Zika virus - Santo Antonio do Descoberto - codigo:5219753</h1>" c:\sync\zika\htm\zika_5219753_2025.htm
sed.exe -i "1i <h1>Zika virus - Valparaiso de Goias - codigo:5221858</h1>" c:\sync\zika\htm\zika_5221858_2025.htm

echo Cria um unico arquivo HTML para cada municipio com todos os agravos.
type c:\sync\chik\htm\chik_5200258_2025.htm >> c:\sync\deng\htm\dengon__aguas_lindas.htm
type c:\sync\zika\htm\zika_5200258_2025.htm >> c:\sync\deng\htm\dengon__aguas_lindas.htm

type c:\sync\chik\htm\chik_5205497_2025.htm >> c:\sync\deng\htm\dengon__cid_ocid.htm
type c:\sync\zika\htm\zika_5205497_2025.htm >> c:\sync\deng\htm\dengon__cid_ocid.htm

type c:\sync\chik\htm\chik_5206206_2025.htm >> c:\sync\deng\htm\dengon__cristalina.htm
type c:\sync\zika\htm\zika_5206206_2025.htm >> c:\sync\deng\htm\dengon__cristalina.htm

type c:\sync\chik\htm\chik_5212501_2025.htm >> c:\sync\deng\htm\dengon__luziania.htm
type c:\sync\zika\htm\zika_5212501_2025.htm >> c:\sync\deng\htm\dengon__luziania.htm

type c:\sync\chik\htm\chik_5215231_2025.htm >> c:\sync\deng\htm\dengon__novo_gama.htm
type c:\sync\zika\htm\zika_5215231_2025.htm >> c:\sync\deng\htm\dengon__novo_gama.htm

type c:\sync\chik\htm\chik_5219753_2025.htm >> c:\sync\deng\htm\dengon__SAD.htm
type c:\sync\zika\htm\zika_5219753_2025.htm >> c:\sync\deng\htm\dengon__SAD.htm

type c:\sync\chik\htm\chik_5221858_2025.htm >> c:\sync\deng\htm\dengon__valparaiso.htm
type c:\sync\zika\htm\zika_5221858_2025.htm >> c:\sync\deng\htm\dengon__valparaiso.htm

echo Move os arquivos HTML finalizados para outra pasta.
move c:\sync\deng\htm\dengon__*.htm c:\sync\join\

echo Renomeia os arquivos da subpasta "join".
cd\
cd sync\join
ren dengon__*.htm sync__*.htm

start "" /wait /B "c:\sync\exe\sync_list.exe"


