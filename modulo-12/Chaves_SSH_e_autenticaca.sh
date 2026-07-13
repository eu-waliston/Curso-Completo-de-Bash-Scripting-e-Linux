ssh-keygen -t ed25519 -C "comentario"
ssh-copy-id user@host

# Desabilite login por senha em /etc/ssh/sshd_config: PasswordAuthentication no.