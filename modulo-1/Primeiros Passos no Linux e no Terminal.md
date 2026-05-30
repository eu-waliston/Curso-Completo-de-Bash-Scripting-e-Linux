# Módulo 1 – Primeiros Passos no Linux e no Terminal

## 1.1 O que é Linux?

Linux é o kernel (núcleo) de um sistema operacional livre. As distribuições (Ubuntu, Debian, Fedora, Arch, etc.) empacotam o kernel com ferramentas GNU e outros softwares. O shell é o interpretador de comandos que permite interagir com o sistema. O Bash (Bourne Again Shell) é o shell mais comum.

## 1.2 Abrindo o terminal

Procure por “Terminal” no menu da sua distribuição. Você verá um prompt como:

```bash
usuario@maquina:~$
```

- usuario = seu nome de usuário

- maquina = nome do computador

- ~ = diretório home

- $ = indica que você é um usuário normal (# seria root)

## 1.3 Navegação essencial

| Comando      | Ação                                               |
|--------------|----------------------------------------------------|
| `pwd`        | Mostra o diretório atual                           |
| `ls`         | Lista arquivos e pastas                            |
| `ls -la`     | Lista detalhada (permissões, dono, tamanho, data)  |
| `ls -a`      | Mostra arquivos ocultos (que começam com `.`)      |
| `cd <dir>`   | Muda de diretório                                  |
| `cd ..`      | Sobe de nível                                      |
| `cd ~` ou `cd` | Volta para a home                                |
| `cd -`       | Volta ao diretório anterior                        |
