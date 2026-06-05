lsblk #lista dispositivos de bloco 
df -h # espaço livre por partição
du -sh * # tamanho de arquivos/diretórios

sudo mount /dev/sdb1 /mnt
sudo umount /mnt

cat /etc/fstab #montagem autoamtica noa boot

# Para particionamento: fdisk, parted, mkfs.ext4, etc.