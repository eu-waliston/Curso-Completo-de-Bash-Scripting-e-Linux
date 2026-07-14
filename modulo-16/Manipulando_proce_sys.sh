cat /proc/cpuinfo 
cat /proc/meminfo
echo 1 > /proc/sys/net/ipv4/ip_forward
cat  /sys/class/net/eth0/address

# vc pode obter metricas diretamente desses pseudo-filessytems
