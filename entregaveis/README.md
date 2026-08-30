# Entregáveis Fase 3, Jornada Bora Criar

| Arquivo | Conteúdo |
|---|---|
| `AgroSense_MVP_3Telas.html` | Atividade 1, Construção do MVP. 7 páginas: capa, jornada crítica, fluxo das 3 telas, detalhe de cada tela e fechamento. |
| `AgroSense_Pitch.html` | Atividade 2, Pitch. 14 slides na estrutura obrigatória do programa. |

Os `.pdf` de mesmo nome são gerados a partir dos HTML.

## Como regerar

```sh
./build.sh
```

O script monta os HTML a partir das partes (`_style.part`, `_phone.part`, `_pitch.part`
e os `_*_body.part`) e imprime os PDF com o Chromium headless. Para usar outro navegador:

```sh
CHROME=/caminho/para/chrome ./build.sh
```

Página no formato 297mm por 167mm, que é 16:9. A regra `@page` já define o tamanho e
tira as margens, então imprimir pelo navegador com "salvar como PDF" também funciona,
desde que as margens fiquem em nenhuma e a impressão de fundo esteja ligada.
