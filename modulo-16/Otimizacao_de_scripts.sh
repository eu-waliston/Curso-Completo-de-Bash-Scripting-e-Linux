# Evite chamar subshells desnecessários (ex: prefira $(<arquivo) a cat arquivo | ...).

# Use builtins ([[ em vez de [, echo builtin).

# Processe arquivos grandes com awk ou sed em vez de loops while read lentos.

# Para paralelismo, use & e wait ou ferramentas como xargs -P.

# processamento paralelo com xargs
seq 10 | xargs -p 4 -I {} sh -c "echo processando {}; sleep 1"
