#!/bin/bash

read -p "Nome do projeto: " PROJECT_NAME
read -p "Descrição do projeto: " DESCRIPTION
read -p "Tecnologias (separadas por vírgula): " TECHS
read -p "Seu nome: " AUTHOR

cat << EOF > README.md
# $PROJECT_NAME

## 📌 Descrição
$DESCRIPTION

## 🚀 Tecnologias
$(echo "$TECHS" | tr ',' '\n' | sed 's/^/- /')

## 👩‍💻 Autora
$AUTHOR
EOF

echo "README.md criado!"
