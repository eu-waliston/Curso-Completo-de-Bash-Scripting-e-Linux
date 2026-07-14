# Quando bash não for suficiente, chame scripts em Python, Perl ou use awk completo. Você pode incorporar pequenos trechos:

python3 -c "import json; print(json.loads('$json')['key'])"