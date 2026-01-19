Function main()

set century on
set date to british

scr()

cArg1 := alltrim( HB_ArgV ( 1 ) )

if empty(cArg1) = .T.
set color to r+/
@ 8,0 say "Erro! Falta o argumento do ano no prompt de comando."
@ 9,0 say "Fim do programa."
wait
quit
endif

if isdigit(cArg1) = .F.
set color to r+/
@ 8,0 say "Erro! O argumento passado no prompt de comando deve ser um ano. Argumento passado: " + cArg1
@ 9,0 say "Fim do programa."
wait
quit
endif

if len(cArg1) > 4
set color to r+/
@ 8,0 say "Erro! O argumento passado no prompt de comando deve ser um ano. No maximo 4 caracteres."
@ 9,0 say "Argumento passado:" + cArg1
@ 10,0 say "Fim do programa."
wait
quit
endif

cChar1 := substr(cArg1,1,1)
cChar2 := substr(cArg1,2,1)
cChar3 := substr(cArg1,3,1)
cChar4 := substr(cArg1,4,1)

lChar1 := isdigit( cChar1 )
lChar2 := isdigit( cChar2 )
lChar3 := isdigit( cChar3 )
lChar4 := isdigit( cChar4 )

if (lChar1 = .F.) .or. (lChar2 = .F.) .or. (lChar3 = .F.) .or. (lChar4 = .F.)
set color to r+/
@ 8,0 say "O argumento passado no prompt de comando deve ser um ano e deve conter apenas numeros."
@ 9,0 say "Argumento passado:" + cArg1
@ 10,0 say "Fim do programa."
wait
quit
endif

@ 8,0 say "Exclui arquivos desatualizados do subdiretorio 'dbf' e 'csv' no DengueReport."
cCommand := "del /q c:\DengueReport\dbf\*.zip"
@ 9,0 say ""
__run( cCommand )

if file("c:\DengueReport\dbf\*.zip") = .F.
set color to gr+/
@ 9,0 say "Ok!Nenhum arquivo zip no diretorio '\DengueReport\dbf\'."
else
set color to r+/
@ 9,0 say "Erro! Arquivo zip no diretorio '\DengueReport\dbf\' encontrado."
endif
set color to g+/

cCommand := "del /q c:\DengueReport\dbf\*.dbf"
@ 10,0 say ""
__run( cCommand )

if file("c:\DengueReport\dbf\*.dbf") = .F.
set color to gr+/
@ 10,0 say "Ok!Nenhum arquivo dbf no diretorio '\DengueReport\dbf\'."
else
set color to r+/
@ 10,0 say "Erro! Arquivo dbf no diretorio '\DengueReport\dbf\' encontrado."
endif
set color to g+/

@ 11,0 say "Exclui arquivos desatualizados do subdiretorio 'deng\csv' no Sync."
cCommand := "del /q c:\sync\deng\csv\*.csv"
@ 12,0 say ""
__run( cCommand )

if file("c:\sync\deng\csv\*.csv") = .F.
set color to gr+/
@ 12,0 say "Ok!Nenhum arquivo csv no diretorio 'sync\deng\csv\'."
else
set color to r+/
@ 12,0 say "Erro! Arquivo csv no diretorio '\sync\deng\csv\' encontrado."
endif
set color to g+/

@ 13,0 say "Exclui arquivos desatualizados do subdiretorio 'dbf' e 'zip' no ZikaChikFlash."
cCommand := "del /q c:\ZikaChikFlash\dbf\*.dbf"
@ 14,0 say ""
__run( cCommand )

if file("c:\ZikaChikFlash\dbf\*.dbf") = .F.
set color to gr+/
@ 14,0 say "Ok!Nenhum arquivo dbf no diretorio 'ZikaChikFlash\dbf'."
else
set color to r+/
@ 14,0 say "Erro! Arquivo dbf no diretorio 'ZikaChikFlash\dbf' encontrado."
endif
set color to g+/

cCommand := "del /q c:\ZikaChikFlash\zip\*.zip"
@ 15,0 say ""
__run( cCommand )

if file("c:\ZikaChikFlash\zip\*.dbf") = .F.
set color to gr+/
@ 15,0 say "Ok!Nenhum arquivo dbf no diretorio 'ZikaChikFlash\zip'."
else
set color to r+/
@ 15,0 say "Erro! Arquivo dbf no diretorio 'ZikaChikFlash\zip' encontrado."
endif
set color to g+/

@ 16,0 say "Excluindo arquivos no formato htm desatualizados."
cCommand := "del /q c:\sync\chik\htm\*.htm"
@ 17,0 say ""
__run( cCommand )

if file("c:\sync\chik\htm\*.htm") = .F.
set color to gr+/
@ 17,0 say "Ok!Nenhum arquivo htm no diretorio 'sync\chik\htm'."
else
set color to r+/
@ 17,0 say "Erro! Arquivo htm no diretorio 'sync\chik\htm' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\deng\htm\*.htm"
@ 18,0 say ""
__run( cCommand )

if file("c:\sync\deng\htm\*.htm") = .F.
set color to gr+/
@ 18,0 say "Ok!Nenhum arquivo htm no diretorio 'sync\deng\htm'."
else
set color to r+/
@ 18,0 say "Erro! Arquivo htm no diretorio 'sync\deng\htm' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\zika\htm\*.htm"
@ 19,0 say ""
__run( cCommand )

if file("c:\sync\zika\htm\*.htm") = .F.
set color to gr+/
@ 19,0 say "Ok!Nenhum arquivo htm no diretorio 'sync\zika\htm'."
else
set color to r+/
@ 19,0 say "Erro! Arquivo htm no diretorio 'sync\zika\htm' encontrado."
endif
set color to g+/

@ 20,0 say "Excluindo arquivos no formato csv desatualizados."
cCommand := "del /q c:\sync\chik\csv\*.csv"
@ 21,0 say ""
__run( cCommand )

if file("c:\sync\chik\csv\*.csv") = .F.
set color to gr+/
@ 21,0 say "Ok!Nenhum arquivo csv no diretorio 'sync\chik\csv'."
else
set color to r+/
@ 21,0 say "Erro! Arquivo csv no diretorio 'sync\chik\csv' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\deng\csv\*.csv"
@ 22,0 say ""
__run( cCommand )

if file("c:\sync\deng\csv\*.csv") = .F.
set color to gr+/
@ 22,0 say "Ok!Nenhum arquivo csv no diretorio 'sync\deng\csv'."
else
set color to r+/
@ 22,0 say "Erro! Arquivo csv no diretorio 'sync\deng\csv' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\zika\csv\*.csv"
@ 23,0 say ""
__run( cCommand )

if file("c:\sync\zika\csv\*.csv") = .F.
set color to gr+/
@ 23,0 say "Ok!Nenhum arquivo csv no diretorio 'sync\zika\csv'."
else
set color to r+/
@ 23,0 say "Erro! Arquivo csv no diretorio 'sync\zika\csv' encontrado."
endif
set color to g+/

@ 24,0 say "Excluindo arquivos no formato xlsx desatualizados."
cCommand := "del /q c:\sync\chik\xlsx\*.xlsx"
@ 25,0 say ""
__run( cCommand )

if file("c:\sync\chik\xlsx\*.xlsx") = .F.
set color to gr+/
@ 25,0 say "Ok!Nenhum arquivo xlsx no diretorio 'sync\chik\xlsx'."
else
set color to r+/
@ 25,0 say "Erro! Arquivo xlsx no diretorio 'sync\chik\xlsx' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\deng\xlsx\*.xlsx"
@ 26,0 say ""
__run( cCommand )

if file("c:\sync\deng\xlsx\*.xlsx") = .F.
set color to gr+/
@ 26,0 say "Ok!Nenhum arquivo xlsx no diretorio 'sync\deng\xlsx'."
else
set color to r+/
@ 26,0 say "Erro! Arquivo xlsx no diretorio 'sync\deng\xlsx' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\zika\xlsx\*.xlsx"
@ 27,0 say ""
__run( cCommand )

if file("c:\sync\zika\xlsx\*.xlsx") = .F.
set color to gr+/
@ 27,0 say "Ok!Nenhum arquivo xlsx no diretorio 'sync\zika\xlsx'."
else
set color to r+/
@ 27,0 say "Erro! Arquivo xlsx no diretorio 'sync\zika\xlsx' encontrado."
endif
set color to g+/

@ 28,0 say "Excluindo outros arquivos desatualizados."
cCommand := "del /q c:\sync\chik\csv\*.xlsx"
@ 29,0 say ""
__run( cCommand )

if file("c:\sync\chik\csv\*.xlsx") = .F.
set color to gr+/
@ 29,0 say "Ok!Nenhum arquivo xlsx no diretorio 'sync\chik\csv'."
else
set color to r+/
@ 29,0 say "Erro! Arquivo xlsx no diretorio 'sync\chik\csv' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\deng\csv\*.xlsx"
@ 30,0 say ""
__run( cCommand )

if file("c:\sync\deng\csv\*.xlsx") = .F.
set color to gr+/
@ 30,0 say "Ok!Nenhum arquivo xlsx no diretorio 'sync\deng\csv'."
else
set color to r+/
@ 30,0 say "Erro! Arquivo xlsx no diretorio 'sync\deng\csv' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\zika\csv\*.xlsx"
@ 31,0 say ""
__run( cCommand )

if file("c:\sync\zika\csv\*.xlsx") = .F.
set color to gr+/
@ 31,0 say "Ok!Nenhum arquivo xlsx no diretorio 'sync\zika\csv'."
else
set color to r+/
@ 31,0 say "Erro! Arquivo xlsx no diretorio 'sync\zika\csv' encontrado."
endif
set color to g+/

cCommand := "del /q c:\sync\join\*.htm"
@ 32,0 say ""
__run( cCommand )

if file("c:\sync\join\*.htm") = .F.
set color to gr+/
@ 32,0 say "Ok!Nenhum arquivo htm no diretorio 'sync\join'."
else
set color to r+/
@ 32,0 say "Erro! Arquivo htm no diretorio 'sync\join' encontrado."
endif
set color to g+/

@ 33,0 say "Excluindo arquivos temporarios da subpasta 'exe'."
cCommand := "ren c:\sync\exe\sed.exe temp.exe"
@ 34,0 say ""
__run( cCommand )
cCommand := "del /q c:\sync\exe\sed*.*"
@ 35,0 say ""
__run( cCommand )
cCommand := "ren c:\sync\exe\temp.exe sed.exe"
@ 36,0 say ""
__run( cCommand )

wait

scr()
@ 8,0 say "Copia os arquivos atualizados no subdiretorio 'dbf' no DengueReport."
cCommand := "copy /Y c:\Sync\deng\*.zip c:\DengueReport\dbf\*.zip"
@ 9,0 say ""
__run( cCommand )

if file("c:\DengueReport\dbf\*.zip") = .T.
set color to gr+/
@ 9,0 say "Ok!Arquivo zip no diretorio 'DengueReport\dbf\'."
else
set color to r+/
@ 9,0 say "Erro! Arquivo zip nao encontrado no diretorio 'DengueReport\dbf\'."
endif
set color to g+/

@ 10,0 say "Copia os arquivos atualizados no subdiretorio 'dbf' e 'zip' no ZikaChikFlash."
cCommand := "copy /Y c:\Sync\chik\*.zip c:\ZikaChikFlash\zip\*.zip"
@ 11,0 say ""
__run( cCommand )

if file("c:\ZikaChikFlash\zip\*.zip") = .T.
set color to gr+/
@ 11,0 say "Ok!Arquivo zip no diretorio 'ZikaChikFlash\zip'."
else
set color to r+/
@ 11,0 say "Erro! Arquivo zip nao encontrado no diretorio 'ZikaChikFlash\zip'."
endif
set color to g+/

cCommand := "copy /Y c:\Sync\zika\nindinet.dbf c:\ZikaChikFlash\dbf\nindinet.dbf"
@ 12,0 say ""
__run( cCommand )

if file("c:\ZikaChikFlash\dbf\nindinet.dbf") = .T.
set color to gr+/
@ 12,0 say "Ok!Arquivo dbf no diretorio 'ZikaChikFlash\dbf\'."
else
set color to r+/
@ 12,0 say "Erro! Arquivo dbf nao encontrado no diretorio 'ZikaChikFlash\dbf'."
endif
set color to g+/

wait

@ 13,0 say "Roda o executavel do DengueReport"
cCommand := "c:\DengueReport\exe\DengueReport.exe" + " " + cArg1
@ 13,0 say ""
__run( cCommand )

scr()

@ 8,0 say "Copia os arquivos de saida que foram gerados no DengueReport."

cCommand := "copy /Y c:\DengueReport\out\*.csv c:\Sync\deng\csv\*.csv"
@ 9,0 say ""
__run( cCommand )

if file("c:\Sync\deng\csv\*.csv") = .T.
set color to gr+/
? "Ok!Arquivos csv no diretorio 'Sync\deng\csv\'."
else
set color to r+/
? "Erro! Arquivos csv nao encontrado no diretorio 'Sync\deng\csv\'."
endif
set color to g+/
wait

function scr()
set color to g+/
cls
@ 1,0 say "****************************************************************"
@ 2,0 say "Sync.bat - versao 1.3 - 19/01/2026                              "
@ 3,0 say "https://github.com/Regional-Entorno-Sul/Sync                    "
@ 4,0 say "Regional de saude Entorno Sul                                   "
@ 5,0 say "Sincroniza a geracao dos arquivos de saida                      "
@ 6,0 say "das ferramentas DengueReport e ZikaChikFlash.                   "
@ 7,0 say "****************************************************************"
@ 8,0 say ""
return

return