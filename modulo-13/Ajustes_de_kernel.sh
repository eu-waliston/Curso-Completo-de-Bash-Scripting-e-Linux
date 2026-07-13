sysctl -a | grep net.ipv4
sudo sysctl -w net.ipv4.ip_forward=1
# perssitente em /etc/sysctl.conf ou /etc/sysctl.d/