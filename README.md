# Laboratório de Desenvolvimento Cabogi

Este laboratório prepara um ambiente Linux (WSL) para desenvolvimento com as seguintes linguagens e ferramentas:

- C (GCC, Makefile)
- Python 3
- Node.js (JavaScript)
- Java (OpenJDK 17)

## Como usar

### 1. Requisitos

- Windows 10/11 com WSL 2 instalado e configurado
- Acesso ao terminal Ubuntu (ou outra distro Linux)

### 2. Configurar e rodar o setup

No terminal Linux, dentro do diretório do laboratório:
bash

chmod +x setup.sh
./setup.sh

3. Estrutura do projeto

hello.c — exemplo C com Makefile para build e run

Makefile — para compilar, rodar e limpar o projeto C

hello.py — script Python simples

hello.js — script Node.js simples

HelloJava/Hello.java — projeto Java básico

4. Comandos úteis

Para compilar e rodar C manualmente:

bash

make build
make run
Para rodar Python:

bash

python3 hello.py
Para rodar Node.js:

bash

node hello.js
Para compilar e rodar Java:

bash

javac HelloJava/Hello.java
java -cp HelloJava Hello

5. Dicas
Edite os arquivos de exemplo para experimentar as linguagens

Use o VS Code com a extensão Remote - WSL para uma melhor experiência

Pode expandir o Makefile para projetos maiores

Contato
Desenvolvido por George Silva ALves — boa codagem!