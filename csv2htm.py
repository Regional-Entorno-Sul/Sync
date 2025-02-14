import sys
import pandas as pd

try:
    file1_csv = sys.argv[1]
except:
    print("Erro!")
    print("Falta os argumentos necessarios para o programa rodar.")
    print("Use csv2htm.exe --help para maiores detalhes.")
    sys.exit()

def help_x():
    if sys.argv[1] == "--help" :
        print("-------------------------------------------------------")
        print("csv2htm - versão beta")
        print("Sintaxe:")
        print("csv2htm.exe [--help] [csv_file] [htm_file]")
        print("--help: mostra na tela essa ajuda.")
        print("csv_file: caminho onde esta o arquivo com extensao csv.")
        print("htm_file: caminho onde o arquivo htm gerado sera salvo.")
        print("Exemplo:")
        print("csv2htm.exe c:/temp/arquivo.csv c:/saida/htm_file.htm")
        print("-------------------------------------------------------")        
        sys.exit()

help_x()

try:
    file1_csv = sys.argv[1]
    file2_htm = sys.argv[2]
except:
    print("Erro!")    
    print("Falta os argumentos necessarios para o programa rodar.")
    print("Use csv2htm.exe --help para maiores detalhes.")
    sys.exit()

x = pd.read_csv( file1_csv )

x.to_html( file2_htm )

html_file = x.to_html()

