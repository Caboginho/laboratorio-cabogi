#!/bin/bash

# Função pra checar e instalar pacote se necessário
install_if_missing() {
  pkg=$1
  cmd=$2
  install_name=$3
  if ! command -v $cmd &> /dev/null; then
    echo "⚠️  $pkg não encontrado. Instalando..."
    sudo apt update
    sudo apt install -y $install_name
  else
    echo "✅ $pkg já está instalado."
  fi
}

echo "🔍 Verificando e instalando ferramentas..."

install_if_missing "GCC (build-essential)" gcc build-essential
install_if_missing "Python3 + pip" python3 python3 python3-pip
install_if_missing "Node.js + npm" node nodejs npm
install_if_missing "Java OpenJDK 17" java openjdk-17-jdk

# Criar hello.c para C
if [ ! -f hello.c ]; then
  echo "📝 Criando arquivo hello.c..."
  cat <<EOF > hello.c
#include <stdio.h>

int main() {
    printf("Olá, Cabogi!\\n");
    return 0;
}
EOF
else
  echo "📁 hello.c já existe."
fi

# Criar Makefile para C
if [ ! -f Makefile ]; then
  echo "🛠️ Criando Makefile..."
  cat <<EOF > Makefile
build:
\tgcc hello.c -o hello

run:
\t./hello

clean:
\trm -f hello
EOF
else
  echo "📄 Makefile já existe."
fi

# Criar projeto Python
if [ ! -f hello.py ]; then
  echo "🐍 Criando hello.py..."
  cat <<EOF > hello.py
print("Olá, Cabogi!")
EOF
else
  echo "🐍 hello.py já existe."
fi

# Criar projeto Node.js
if [ ! -f hello.js ]; then
  echo "🟩 Criando hello.js..."
  cat <<EOF > hello.js
console.log("Olá, Cabogi!");
EOF
else
  echo "🟩 hello.js já existe."
fi

# Criar projeto Java
if [ ! -d HelloJava ]; then
  echo "☕ Criando projeto Java HelloJava..."
  mkdir HelloJava
  cat <<EOF > HelloJava/Hello.java
public class Hello {
    public static void main(String[] args) {
        System.out.println("Olá, Cabogi!");
    }
}
EOF
else
  echo "☕ Projeto Java HelloJava já existe."
fi

# Compilar e executar C
echo "🚧 Compilando C..."
make build

echo "🚀 Executando C..."
make run

# Executar Python
echo "🐍 Executando Python..."
python3 hello.py

# Executar Node.js
echo "🟩 Executando Node.js..."
node hello.js

# Compilar e executar Java
echo "☕ Compilando Java..."
javac HelloJava/Hello.java && java -cp HelloJava Hello

echo "✅ Tudo pronto, Cabogi! Seu laboratório está tinindo!"

