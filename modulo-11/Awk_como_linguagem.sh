# 11.1 Awk como linguagem

BEGIN { FS=","; OFS="\t"; print "Nome\tIdade" }
$3 > 18 { print $1, $3 }
END { print "Total de adultos:", NR }

# Execução: awk -f script.awk dados.csv

# Arrays associativos:
{ total[$1] += $3 }
END { for {name in total } print name, total[name]}

# Awk suporta if, while, for, funções como length, substr, match.