#!/bin/bash

echo "Digite a mensagem do commit:"
read msg

if [ -z "$msg" ]; then
  echo "❌ Mensagem vazia. Abortando."
  exit 1
fi

git add .
git commit -m "$msg"
git push
