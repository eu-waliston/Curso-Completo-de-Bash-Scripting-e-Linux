# Além de substituição, sed pode executar comandos 
# condicionais e usar o hold space:

# Inverte paragrafos
# sed -n '1!G;h;$p' arquivo

# Remove tags HTML
sed 's/<[^>]*>//g' index.html