Function main()
cls
set color to g+/

public cPlace := "c:\sync\chik\csv\*.csv"
public aList := Directory( cPlace )
public nFiles := ADir( "c:\sync\chik\csv\*.csv" )

? str( nFiles )

copy file "c:\sync\mod\list_muns.dbf" to "c:\sync\set\list_muns.dbf"
use "c:\sync\set\list_muns.dbf"
zap
append from "c:\sync\set\list_muns.txt" delimited with '"'
close

for n := 1 to nFiles
? aList[n,1]

cExtract := SubStr (aList[n,1], 6, 6)
? cExtract

use "c:\sync\set\list_muns.dbf"
locate for cod_munres = cExtract
if found()
? cod_munres, munic_name
endif

cStuff := left(aList[n,1], 17) + "_" + alltrim(munic_name) + ".csv"
? cStuff

cFile1 := "c:\sync\chik\csv\" + alltrim(aList[n,1])
cFile2 := "c:\sync\chik\csv\" + cStuff

? cFile1
? cFile2

rename (cFile1) to (cFile2)

next

public cPlace := "c:\sync\zika\csv\*.csv"
public aList := Directory( cPlace )
public nFiles := ADir( "c:\sync\zika\csv\*.csv" )

for x := 1 to nFiles
? aList[x,1]

cExtract := SubStr (aList[x,1], 6, 6)
? cExtract

use "c:\sync\set\list_muns.dbf"
locate for cod_munres = cExtract
if found()
? cod_munres, munic_name
endif

cStuff := left(aList[x,1], 17) + "_" + alltrim(munic_name) + ".csv"
? cStuff

cFile1 := "c:\sync\zika\csv\" + alltrim(aList[x,1])
cFile2 := "c:\sync\zika\csv\" + cStuff

? cFile1
? cFile2

rename (cFile1) to (cFile2)

next

cls
? "-------------------------------------------------"

public cPlace := "c:\sync\chik\csv\*.csv"
public aList := Directory( cPlace )
public nFiles := ADir( "c:\sync\chik\csv\*.csv" )

for y := 1 to nFiles
? aList[y,1]

cFile1_x := "c:\sync\chik\csv\" + alltrim(aList[y,1])
? cFile1_x
nLen_cFile1_x := len( cFile1_x )
? str( nLen_cFile1_x )
cFile2_x := left( cFile1_x, nLen_cFile1_x - 3) + "xlsx"
? cFile2_x

cProgram := "c:\sync\exe\csv2xlsx.exe --output " + cFile2_x + " " + cFile1_x
__Run( cProgram )

next

public cPlace := "c:\sync\deng\csv\*.csv"
public aList := Directory( cPlace )
public nFiles := ADir( "c:\sync\deng\csv\*.csv" )

for z := 1 to nFiles
? aList[z,1]

cFile1_x := "c:\sync\deng\csv\" + alltrim(aList[z,1])
? cFile1_x
nLen_cFile1_x := len( cFile1_x )
? str( nLen_cFile1_x )
cFile2_x := left( cFile1_x, nLen_cFile1_x - 3) + "xlsx"
? cFile2_x

cProgram := "c:\sync\exe\csv2xlsx.exe --output " + cFile2_x + " " + cFile1_x
__Run( cProgram )

next

public cPlace := "c:\sync\zika\csv\*.csv"
public aList := Directory( cPlace )
public nFiles := ADir( "c:\sync\zika\csv\*.csv" )

for z := 1 to nFiles
? aList[z,1]

cFile1_x := "c:\sync\zika\csv\" + alltrim(aList[z,1])
? cFile1_x
nLen_cFile1_x := len( cFile1_x )
? str( nLen_cFile1_x )
cFile2_x := left( cFile1_x, nLen_cFile1_x - 3) + "xlsx"
? cFile2_x

cProgram := "c:\sync\exe\csv2xlsx.exe --output " + cFile2_x + " " + cFile1_x
__Run( cProgram )

next

cScript := "copy c:\sync\zika\csv\*.xlsx c:\sync\zika\xlsx\"
__Run( cScript )

cScript2 := "copy c:\sync\chik\csv\*.xlsx c:\sync\chik\xlsx\"
__Run( cScript2 )

cScript3 := "copy c:\sync\deng\csv\*.xlsx c:\sync\deng\xlsx\"
__Run( cScript3 )

return nil