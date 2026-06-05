# 3.2 Variáveis e arrays

nome="maria"
numero=42
preco=19.99 # Bash n tem float real; use bc ou awk para calculos

#Arrays (Base 4+)
frutas=(maça banana laranja)
echo ${frutas[0]} #primeiro elemento
echo ${frutas[@]} # todos os elementos
echo ${#frutas[@]} # tamanho do array

for f in "${frutas[@]}"; do
    echo "Fruta: $f"
done