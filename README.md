# AgroSense

Plataforma de irrigação inteligente para o agricultor familiar do semiárido cearense.
Kit de sensores de baixo custo, decisão calculada na nuvem e recomendação diária
entregue por WhatsApp, sem exigir internet na lavoura.

Projeto do Empreende UFC 2026, edital PROINTER PIBI 02/2026, Campus de Crateús,
vinculado à Jornada Bora Criar do Hub Corredores Digitais.

## Por onde começar

Leia o `AgroSense.md`. Ele é a fonte única de contexto do projeto: programa, equipe,
produto, modelo de negócio, validação das hipóteses, status atual, roadmap técnico e o
conjunto de números que todos os documentos precisam respeitar.

## Estrutura

```
AgroSense.md      contexto completo do projeto
entregaveis/      documentos do programa em HTML e PDF, com o build.sh
marca/            logo em SVG e PNG, com as regras de uso
```

## Regenerar os documentos

```sh
cd entregaveis && ./build.sh
```

Monta os HTML a partir das partes e gera os PDF com o Chromium headless.
Detalhes em `entregaveis/README.md`.

## Situação

Documentos das três fases do Bora Criar entregues. O produto técnico ainda não foi
construído: firmware, gateway, backend e kits físicos estão listados como pendentes na
seção 9 do `AgroSense.md`. Os números dos documentos são estimativas derivadas dos
limiares da Embrapa Semiárido e serão substituídos pelos dados de campo em novembro de 2026.
