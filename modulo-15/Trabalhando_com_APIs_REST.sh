resposta=$(curl -s -H "Authorization: Bearer $TOKEN" https://api.example.com/dados)

echo "$resposta" | jq '.nome' #use jp para JSON (sudo apt install jq)

