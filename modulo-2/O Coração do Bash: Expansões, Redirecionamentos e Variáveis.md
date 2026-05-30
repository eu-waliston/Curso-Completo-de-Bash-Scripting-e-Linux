# 2.4 Redirecionamentos e pipes

| Sintaxe              |Significado                                                     |
|----------------------|-----------------------------------------------------------------
|`comando > arquivo`   |	Redireciona stdout (saída padrão) para arquivo (sobrescreve)|
|`comando >> arquivo`  |    Redireciona stdout anexando ao final                        |
|`comando 2> erros.log`|	Redireciona stderr (erros)                                  |
|`comando &> tudo.log` |	Redireciona stdout e stderr juntos                          |
|`comando < arquivo`   |	Usa arquivo como stdin                                      |
|`comando1 \| comando2` |	Pipe: envia stdout de comando1 para stdin de comando2       |
