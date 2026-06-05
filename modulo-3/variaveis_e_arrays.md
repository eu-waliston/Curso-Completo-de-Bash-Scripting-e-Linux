# Testes e condições

## O comando test (ou [ ]) e o mais moderno [[ ]] avaliam expressões

| Operador      |Significado                                 |
|---------------|---------------------------------------------
|`-f arquivo`   |Arquivo existe e é regular                  |
|`-d dir`       |É diretório                                 |
|`-x prog`      |É executável                                |
|`-z "$var"`    |String vazia                                |
|`-n "$var"`    |String não vazia                            |
|`"$a" = "$b"`  |Strings iguais                              |
|`"$a" != "$b"` |Diferentes                                  |
|`$a -eq $b`    |Inteiros iguais (-ne, -lt, -le, -gt, -ge)   |
|`!`            |Negação                                     |

## Sempre prefira [[ ]] em Bash: suporta regex =~, &&, || e trata espaços corretamente.