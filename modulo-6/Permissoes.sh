chmod   755 script.sh   # rwr-xr-r
chmod   u+x script.sh   # adiciona execução ao dono
chmod   usuario:grupo arquivo
chmod   grupo arquivo
umask   022             # máscara para novos arquivos

#SUID (4xxx): executa com privilégios de don
#SGID (2xxx): executa com privilegios do grupo; em diretórios, força heranã de grupo
#sticky bit (1xxx) em direorios: apenas dono pode deletar (ex: /tmp)
