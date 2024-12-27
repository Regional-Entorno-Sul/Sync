# Sync
Sincroniza as ferramentas "DengueReport" e "ZikaChikFlash", atualizando os arquivos de entrada e reunindo os arquivos de saida gerados em uma única estrutura de diretórios e subdiretórios.
Também transforma os arquivos no formato CSV em arquivos HTML e XLSX.

## Como usar?  
1. É necessário ter os programas "DengueReport" e "ZikaChikFlash" funcionando no PC;
2. Fazer o download da ferramenta "Sync" e após descompactá-la, colocar o diretório "Sync" (resultante do processo de descompactação), na unidade C ou disco local C do PC;

![x](/pic/sync1.jpg)

3. Para a sincronização da geração dos arquivos de saída pelo "DengueReport" e "ZikaChikFlash", coloque os seguintes arquivos nas seguintes subpastas do "Sync":  
a. Arquivo de exportação de Febre de Chikungunya gerado do SINAN Online na subpasta "c:\sync\chik" (não é necessário descompactar o arquivo);  

![x](/pic/sync2.jpg)  

  b. Arquivo de exportação de Dengue gerado do SINAN Online na subpasta "c:\sync\deng" (não é necessário descompactar o arquivo);  
  c. Arquivo de exportação DBF de notificações individuais, "nindinet.dbf", gerado no SINAN NET na subpasta "c:\sync\zika";  

4. Rodar o arquivo "sync.bat" para o processamento dos arquivos. Se tudo estiver correto, o Sync irá executar os programas "DengueReport" e "ZikaChikFlash" sem a intervenção do usuário.


