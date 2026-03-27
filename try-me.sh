#!/bin/bash
#agregando cositas al .zshrc
MESSAGE="Hola, soy producto de una prueba de Offensive-Security"

# Verificar si el mensaje ya existe en el .zshrc
if ! grep -Fxq "$MESSAGE" ~/.zshrc; then
    echo "$MESSAGE" >> ~/.zshrc
fi
