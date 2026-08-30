#!/bin/sh
# Monta os HTML dos entregaveis e gera os PDF com o Chromium headless.
set -e
cd "$(dirname "$0")"
{ printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1">\n<title>AgroSense, Construção do MVP</title>\n<style>\n'
  cat _style.part _phone.part _logo.part
  printf '</style>\n</head>\n<body>\n'; cat _defs.part; cat _mvp_body.part; printf '</body>\n</html>\n'
} > AgroSense_MVP_3Telas.html
{ printf '<!doctype html>\n<html lang="pt-BR">\n<head>\n<meta charset="utf-8">\n<meta name="viewport" content="width=device-width,initial-scale=1">\n<title>AgroSense, Pitch</title>\n<style>\n'
  cat _style.part _phone.part _logo.part _pitch.part
  printf '</style>\n</head>\n<body>\n'; cat _defs.part; cat _pitch_body.part; printf '</body>\n</html>\n'
} > AgroSense_Pitch.html
CH=${CHROME:-/opt/pw-browsers/chromium-1194/chrome-linux/chrome}
for f in AgroSense_MVP_3Telas AgroSense_Pitch; do
  "$CH" --headless --no-sandbox --disable-gpu --no-pdf-header-footer \
        --print-to-pdf="$f.pdf" "file://$PWD/$f.html" 2>/dev/null
done
echo "gerados: AgroSense_MVP_3Telas.[html|pdf] AgroSense_Pitch.[html|pdf]"
