# GPG
gpg --gen-key
gpg -e -r destinatario arquivo.txt
gpg -d arquivo.txt.png

# OpenSSL
openssl enc -aes-256-cbc -salt -in arquivo -out arquivo.enc
openssl enc -d -aes-256-cbc -in arquivo.enc -out arquivo

