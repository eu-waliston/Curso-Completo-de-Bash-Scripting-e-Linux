# Crie um diretório com permissão 1770 e verifique que apenas o dono pode apagar arquivos internos, mesmo que outros tenham escrita.

mkdir permission_1770
chmod +1770 permission_1770
ls permission_1770

# Faça um hard link de um arquivo e comprove que ambos compartilham o mesmo inode (use ls -i).

ln permission_1770 no_permission_1770
ls -la

# Monte uma imagem ISO usando loop: mount -o loop arquivo.iso /mnt/iso.
sudo mount -o loop arquivo.iso /mnt/iso