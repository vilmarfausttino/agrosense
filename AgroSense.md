# AgroSense — Arquivo de Contexto Completo do Projeto

> **Instrução para o Claude Code:**
> Leia este arquivo inteiro antes de qualquer ação. Ele é o contexto completo
> do projeto AgroSense, migrado de uma conversa extensa no claude.ai.
> Ao terminar de ler, responda apenas: "Contexto carregado. Pronto para continuar."
> Não faça perguntas sobre o que está escrito aqui — assuma que tudo é verdadeiro
> e atual. Pergunte apenas o que genuinamente falta.

---

## 0. META: COMO USAR ESTE ARQUIVO

Este arquivo substitui a memória de conversa. É um "project bible" vivo.
Ao final de cada sessão de trabalho relevante, atualize as seções afetadas:
STATUS ATUAL, DOCUMENTOS ENTREGUES, REGISTRO DE DECISÕES e o CONJUNTO DE NÚMEROS.

**Onde o projeto vive:** repositório `vilmarfausttino/agrosense` no GitHub,
branch `claude/pensive-ritchie-nb5uq0`. Este arquivo está versionado na raiz,
então cada sessão começa com `cat AgroSense.md` dentro do repositório clonado,
sem precisar colar nada no terminal. Estrutura:

```
AgroSense.md            este arquivo, fonte única de contexto
entregaveis/            documentos do programa em HTML e PDF, mais o build.sh
marca/                  logo em SVG e PNG, com o README de uso da marca
```

Vilmar (o usuário) trabalha com Claude Code no terminal para:
- Gerar documentos LaTeX (Beamer), PPTX (pptxgenjs) e Word (python-docx)
- Escrever código Python/firmware/backend
- Redigir textos acadêmicos e técnicos

---

## 1. O PROGRAMA — CONTEXTO INSTITUCIONAL

### Empreende UFC 2026

**Edital:** PROINTER PIBI no. 02/2026  
**Instituição:** Universidade Federal do Ceará (UFC) — Campus de Crateús, CE  
**Objetivo:** Apoio a iniciativas de inovação e empreendedorismo de estudantes da UFC com bolsas de pesquisa.

**Documentos de inscrição entregues:**
- Formulário Anexo I preenchido (área IoT + IA, setor Agronegócio + Meio Ambiente, negócio de impacto = SIM)
- Descrição de funções de todos os membros (dentro de 250 caracteres cada campo)
- **Pendente:** confirmar campo "Unidade" com a Profa. Antonia Jamille; confirmar sobrenome completo da Eduarda

**Encontros Universitários 2026 (EU2026):**
- **Evento:** VII Encontro de Empreendedorismo e Inovação — PROINTER (Campus Crateús)
- **Tipo de trabalho:** Pitch
- **ODS:** 2, 6, 13
- **Autor principal:** Vilmar Faustino do Nascimento (matrícula 09154719305, vilmarfaustino@alu.ufc.br)
- **Coautores:** Francisca Mirele Ferreira Batista, Maria Eduarda Jesus de Mendonça, Ana Letícia Alves Sousa, Antonia Jamille de Oliveira
- **Atenção:** a autoria dos EU2026 precisa ser conferida contra o Anexo IV antes da submissão
- **Título:** "AgroSense: plataforma de irrigação inteligente para agricultores familiares do semiárido cearense"
- **Palavras-chave:** Irrigação inteligente — IoT — Semiárido
- **Resumo:** produzido (~1.650 caracteres), pronto para colar no formulário dos EU2026

### Jornada Bora Criar — Hub Corredores Digitais

Programa de aceleração de startups do Hub Corredores Digitais (CE), vinculado ao Empreende UFC 2026. Estruturado em 3 fases com entregas obrigatórias.

**Fase 1 — Descoberta (concluída):**
- Atividade: Descoberta do Problema e do Cliente
- Entregável: Árvore do Problema + 5 Porquês (PowerPoint)

**Fase 2 — Validação (concluída):**
- Atividades: Análise Concorrencial, Proposta de Valor, BMC, Validação do Problema
- Entregáveis: 4 PowerPoints + 1 Beamer PDF (Matriz CSD, Matriz de Hipóteses, 6 Cartões de Teste, 6 Cartões de Aprendizado)

**Fase 3 — Construção do MVP (concluída, refeita em 30/08/2026):**
- Atividade 1: Construção do MVP, fluxo de 3 telas da funcionalidade principal
- Atividade 2: Pitch na estrutura obrigatória de 14 slides
- Entregáveis atuais: dois arquivos HTML paginados em 16:9, com PDF gerado a partir deles
- A versão anterior era um único Beamer PDF combinado, substituída pelos arquivos em HTML
- Submissão: via Google Forms disponibilizado pelo programa
- Observação: este é o pitch de teste. O pitch definitivo será feito em novembro de 2026,
  já com os números medidos em campo

**Marcos do programa:**
- **DEMOLATION:** agosto de 2026 — apresentar MVP com kit físico em operação
- **DEMODAY:** dezembro de 2026 — primeiros assinantes pagantes, produto funcionando

---

## 2. IDENTIDADE E VISÃO DO PROJETO

**Nome:** AgroSense  
**Tagline:** "Plataforma de Irrigação Inteligente para o Semiárido Cearense"  
**Slogan interno:** "Mais produtividade. Menos desperdício. Mais renda."  
**Categoria:** Agritech / IoT / Negócio de Impacto Socioambiental  
**E-mail do projeto:** agrosense.ufc@gmail.com (usar nos documentos; não é endereço verificado, é referência)

### O Problema

O Ceará tem 75% do território inserido no semiárido. Para os agricultores familiares dessa região, a irrigação não é opcional — é a diferença entre colher e não colher. O problema central é que esses agricultores tomam decisões de irrigação sem nenhuma informação técnica sobre o estado real do solo.

**Dados confirmados usados no projeto:**
- Agricultores do NE perdem 40 a 60% da água na irrigação por falta de informação sobre o solo (Embrapa Semiárido, 2022)
- Menos de 8% dos agricultores familiares recebem assistência técnica regular no Brasil (IBGE, Censo Agropecuário 2017)
- Mais de 77% das áreas rurais do semiárido não têm Wi-Fi ou sinal 4G estável (Anatel, 2023)
- O WhatsApp está instalado em 99% dos smartphones do NE — é o principal canal digital da população rural
- A Embrapa Semiárido publicou limiares hídricos para feijão-caupi, milho e mandioca — base científica disponível e pública
- Soluções de mercado custam de R$ 3.000 a R$ 40.000, inacessíveis para propriedades de 1 a 10 ha

**A consequência mais grave:** salinização do solo por excesso de irrigação é irreversível. O agricultor perde a terra para sempre, mas sem monitoramento não tem como saber que está errando.

### A Solução

Kit sensor de baixo custo + plataforma de IA em nuvem + alerta diário via WhatsApp. O agricultor nunca precisa entender a tecnologia. Recebe apenas: **"Irrigar 25 min às 6h da manhã."**

**Quatro pilares da proposta de valor:**
1. Para quem: agricultor familiar, 1 a 10 ha, semiárido CE, sem internet no campo, sem consultoria técnica
2. Que problema resolve: irrigação às cegas, desperdício de 40 a 60% da água, solo salinizando
3. Como resolve: kit R$ 180 + IA + WhatsApp, sem internet no campo, recomendação diária simples
4. Por que é diferente: 80x mais barato que concorrentes, sem internet, interface WhatsApp, único calibrado para o semiárido cearense

---

## 3. EQUIPE

Composição oficial conforme o Anexo IV, Termo de Atualização da Formação de Equipe,
PIBI/UFC, vigente a partir de 16/05/2026. Esta lista substitui qualquer versão anterior.

**Francisca Mirele Ferreira Batista** (Líder do projeto, Bolsista)
- Matrícula 585399, Sistemas de Informação, UFC Crateús, 3º semestre, conclusão prevista 2028.2
- Responsabilidade: gestão das atividades, cronograma e comunicação do projeto nas mídias sociais

**Ana Letícia Alves Sousa** (Bolsista)
- Matrícula 583131, Engenharia Civil, UFC Crateús, 9º semestre, conclusão prevista 2027.2
- Responsabilidade: pesquisa de campo, entrevistas com agricultores e validação das hipóteses do produto

**Vilmar Faustino do Nascimento** (Voluntário)
- Matrícula 538743, Engenharia Civil, UFC Crateús, 9º semestre, conclusão prevista 2027.2
- Responsabilidade: design do kit sensor, calibração de sensores para solos argilosos do semiárido
  e metodologia de monitoramento de impacto hídrico
- E-mail pessoal: vilmarfaustinok@gmail.com, e-mail UFC: vilmarfaustino@alu.ufc.br
- Nascido em Crateús-CE (2003), criado em Ipaporanga-CE, primeiro da família a cursar ensino superior
- Habilidades técnicas: Python, R, Java, C#, C++, MATLAB, SQL, VBA, Bash, HTML
- Ferramentas de engenharia: AutoCAD, Revit, SketchUp, Eberick, TQS, SAP2000

**Maria Eduarda Jesus de Mendonça** (Voluntária)
- Engenharia Civil, UFC Crateús, 9º semestre, conclusão prevista 2028.2
- Responsabilidade: desenvolvimento de software, modelo preditivo de IA, app mobile
  e gestão do plano de negócios

**Profa. Antonia Jamille de Oliveira** (Orientadora)
- Professora, Departamento de Estruturas, Unidade Estruturas, Campus de Crateús
- Responsabilidade: rigor técnico-científico, conexão com pesquisa em recursos hídricos

**Saiu da equipe:** Ana Jamilly Almeida Teixeira não consta no Anexo IV vigente.
As atribuições de software e modelo preditivo passaram para Maria Eduarda.

**Atenção ao usar documentos antigos:** até a Fase 2 os materiais listavam Vilmar como líder
bolsista. No Anexo IV vigente o líder é a Francisca Mirele e o Vilmar é voluntário.

---

## 4. PRODUTO TÉCNICO DETALHADO

### Hardware do Kit — Versão 1 (MVP)

**Custo total:** R$ 120 em materiais. **Preço de venda:** R$ 180. **Margem bruta:** 33%.

| Componente | Função | Custo unitário |
|---|---|---|
| Sensor FC-28 | Umidade do solo (resistivo) | R$ 8 |
| Sensor DS18B20 | Temperatura do solo (1-Wire) | R$ 12 |
| Microcontrolador ESP32 | Processamento local, Wi-Fi (não usado no campo), Bluetooth | R$ 35 |
| Módulo LoRa Ra-02 (SX1278) | Transmissão de dados sem internet, 433 MHz | R$ 45 |
| Case ABS + bateria LiPo 3.7V 5000mAh + cabos | Montagem, impermeabilidade e autonomia | R$ 20 |

**Especificações operacionais:**
- Frequência de leitura: a cada 30 minutos
- Autonomia da bateria: ~30 dias sem recarga
- Alcance LoRa: 10 km sem repetidor (campo aberto)
- Protocolo: LoRa 433 MHz (Ra-02 / SX1278), sem necessidade de operadora ou Wi-Fi
- Gateway: Raspberry Pi com módulo LoRa no ponto central da propriedade ou da cooperativa

**Hardware versão 2 (planejado, pós-piloto):**
- Incluir sensor de condutividade elétrica (CE) do solo — fundamental para monitorar salinização
- A variação de CE é o argumento mais poderoso com o agricultor que já vê sinais de salinização

### Pipeline da Solução (5 etapas)

```
[1] SOLO
    FC-28 + DS18B20 + ESP32
    Leitura a cada 30 min
    ↓
[2] TRANSMISSÃO
    Módulo LoRa Ra-02
    Sem internet, alcance 10 km
    ↓
[3] NUVEM + IA
    Python, FastAPI, PostgreSQL
    API INMET (previsão climática, pública, sem autenticação)
    ↓
[4] DECISÃO
    Random Forest calibrado com dados Embrapa
    Para feijão-caupi, milho e mandioca no semiárido CE
    ↓
[5] AGRICULTOR
    WhatsApp / SMS automático às 5h30
    "Irrigar 25 min às 6h da manhã"
```

**Importante sobre o modelo de IA:**
- Na v1 (MVP para Demolation), pode ser substituído por lógica de threshold (if-else com os parâmetros da Embrapa) antes do Random Forest completo
- O modelo aprende progressivamente: desvio médio de 22% na semana 1, reduz para 11% na semana 4 após calibração com dados locais
- Cada propriedade instalada gera dados únicos do semiárido CE — vantagem competitiva crescente (Data Flywheel)
- Parâmetros Embrapa usados: limiares hídricos para feijão-caupi (cultura principal do piloto), milho e mandioca

### Stack de Software

- **Backend:** Python 3.11+ com FastAPI + SQLAlchemy + PostgreSQL
- **Modelo preditivo:** scikit-learn (Random Forest), treinado com parâmetros Embrapa
- **Dados climáticos:** API INMET (`https://apitempo.inmet.gov.br/`) — gratuita, sem autenticação, por município
- **Canal WhatsApp:** Twilio WhatsApp API (Sandbox para testes, produção requer aprovação)
- **Canal SMS:** Twilio SMS ou Zenvia (backup para áreas sem WhatsApp)
- **Firmware ESP32:** MicroPython ou Arduino IDE (C++)
- **Gateway LoRa:** Python no Raspberry Pi com biblioteca LoRa

### Fluxo do MVP nas 3 Telas (conforme mockup entregue)

**Tela 1 — Entrada:**
- Header verde AgroSense + nome da localidade (Boa Esperança, Crateús)
- Card de estado do solo: umidade 34%, temperatura, alerta "ABAIXO DO IDEAL"
- Card de recomendação do dia: "Irrigar 25 min às 6h" com motivo resumido
- Previsão de 5 dias (INMET) com ícones de clima
- Histórico das últimas irrigações

**Tela 2 — Interação:**
- Header azul "Recomendação de Hoje"
- Card principal com a recomendação detalhada
- Motivos da recomendação (3 bullets): umidade do solo, temperatura prevista, previsão de chuva
- Botão verde "Confirmar Irrigação"
- Botão secundário "Ver histórico completo"
- Preview do impacto estimado: "−420 L de água economizados"

**Tela 3 — Sucesso:**
- Header verde "Irrigação Confirmada" com horário de execução
- Ícone de checkmark em círculo verde
- Cards de impacto: 420 L economizados, +22% produtividade
- Card de economia acumulada do mês: "62.400 L economizados"
- Próxima verificação + previsão de chuva
- Botão "Compartilhar resultado"

---

## 5. MODELO DE NEGÓCIO DETALHADO

### Fontes de Receita

**1. Hardware (Venda do Kit)**
- Preço: R$ 180/kit
- Custo de materiais: R$ 120
- Margem bruta: 33%
- Modelo: venda única, sem recorrência obrigatória

**2. SaaS (Assinatura Mensal)**
- Preço: R$ 30/mês por propriedade
- Margem: superior a 90% (custo principal é infraestrutura de nuvem e API)
- Sustentabilidade: ponto de equilíbrio financeiro com 200 assinantes (~18 meses após o piloto)
- Teste gratuito de 30 dias com kit instalado — decisão estratégica tomada após a validação H2

**3. B2G (Contratos com Órgãos Públicos)**
- Alvos: SEMACE, DNOCS, Secretaria da Agricultura do Ceará
- Ticket: R$ 50 a 200 mil por contrato
- Alta margem, baixa frequência
- Dados gerados pelos kits são ativos valiosos para políticas públicas

### Projeções

| Marco | Prazo | Meta |
|---|---|---|
| Piloto campo | Jul/Ago 2026 | 3 kits instalados em Crateús |
| Demolation | Ago 2026 | Kit funcionando, dados reais |
| Expansão piloto | Set/Dez 2026 | 15 propriedades monitoradas |
| Demoday | Dez 2026 | Primeiros assinantes pagantes |
| Equilíbrio financeiro | ~Jun 2028 | 200 assinantes ativos |
| Expansão nordeste | 2027 | Entrada no mercado de cooperativas |

### Canal de Distribuição e Estratégia de Go-to-Market

**Canal principal:** cooperativas e associações de irrigantes do semiárido CE
- Decisão baseada na validação H4: cooperativas são portas de entrada, mas a venda acontece de forma individual, agricultor por agricultor
- A liderança da associação funciona como validação social, não como comprador coletivo
- O "agricultor referência" que testa primeiro e mostra o resultado para os vizinhos é o elo mais importante do canal

**Estratégia de entrada:**
1. Apresentação em grupo para membros da associação (20 min)
2. Kit gratuito para o presidente da associação parceira (gera credibilidade)
3. Fechamento individual com cada agricultor interessado
4. Teste gratuito de 30 dias antes da primeira cobrança

**Parceiros estratégicos:**
- Embrapa Semiárido (dados e credibilidade científica)
- EMATER-CE (extensão rural e acesso a agricultores)
- DNOCS e SEMACE (mercado B2G)
- CPITT/UFC (registro de software e proteção intelectual)

---

## 6. MERCADO E CONCORRENTES DETALHADOS

### Dimensionamento de Mercado

| Segmento | Agricultores | Potencial anual |
|---|---|---|
| Brasil | 3,8 milhões de agricultores familiares | R$ 1,4 bi/ano |
| Nordeste | 2,3 milhões de produtores | R$ 83 mi/ano |
| Ceará | 320 mil agricultores | R$ 5,7 mi/ano |
| Piloto 5% | 16 mil produtores | R$ 576 k/ano |

**Setor:** Agritech Brasil cresce 30% ao ano (AgFunder, 2023) — dado citado nos documentos com reserva ("não tenho certeza da fonte primária, verificar").

### Análise Competitiva

**Agrosmart** (Campinas-SP)
- Ticket médio: R$ 40.000/ano
- Público: grandes produtores (soja, café, cana)
- Conectividade: exige internet Wi-Fi ou 4G permanente no campo
- Calibração: genérica (foco no Sul e Sudeste)
- Interface: dashboard técnico complexo
- Por que não serve para o nosso público: preço inacessível, exige internet, focado em grandes propriedades

**IrriGate** (Curitiba-PR)
- Ticket: abaixo de R$ 10.000
- Público: médios produtores, Sul e Sudeste
- Conectividade: exige Wi-Fi
- Por que não serve: ainda caro, exige Wi-Fi, sem presença no NE

**AgroSense vs concorrentes:**

| Dimensão | Concorrentes | AgroSense |
|---|---|---|
| Custo de entrada | R$ 3.000 a R$ 40.000 | R$ 180 |
| Conectividade | Wi-Fi ou 3G permanente | LoRa, sem internet |
| Público-alvo | Grande produtor | Agricultor familiar |
| Calibração | Genérica (Sul e SE) | Semiárido cearense |
| Interface | Dashboard técnico | WhatsApp e SMS |

**Vantagem de longo prazo (Data Flywheel):**
Mais kits instalados → mais dados do semiárido CE → modelo mais preciso → mais valor ao cliente → mais kits. Um concorrente levaria 2 a 3 anos para replicar o modelo preditivo local após entrar no mercado.

---

## 7. VALIDAÇÃO DO PROBLEMA — FERRAMENTAS COMPLETAS

### Matriz CSD

**Certezas (baseadas em dados confirmados):**
1. Agricultores do NE perdem 40 a 60% da água na irrigação por falta de info sobre o solo (Embrapa, 2022)
2. Menos de 8% dos agricultores familiares recebem assistência técnica regular (IBGE, 2017)
3. Soluções de mercado custam de R$ 3.000 a R$ 40.000 — inacessíveis para 1 a 10 ha
4. Mais de 77% das áreas rurais do semiárido não têm Wi-Fi ou 4G estável (Anatel, 2023)
5. O WhatsApp está em 99% dos smartphones do NE — principal canal digital da população rural
6. A Embrapa publicou limiares hídricos para feijão-caupi, milho e mandioca — base científica disponível

**Suposições (a validar):**
1. Se a recomendação chegar via WhatsApp, o agricultor a seguirá diariamente e sem treinamento
2. Se o kit custar R$ 180, o agricultor aceitará pagar R$ 30/mês após perceber o ganho real
3. Se calibrado para solos do semiárido CE, o modelo será mais preciso que soluções genéricas
4. As cooperativas de irrigantes serão o canal mais eficiente de entrada nos primeiros 6 meses
5. Parceria com EMATER-CE e DNOCS reduzirá o custo de aquisição de clientes
6. A mensagem curta "Irrigar 25 min às 6h" será seguida sem que o agricultor precise entender o sistema

**Dúvidas (perguntas abertas):**
1. O agricultor confiará em recomendação gerada por computador e mudará o comportamento de irrigação?
2. R$ 30/mês é percebido como justo pelo agricultor com renda mensal abaixo de R$ 1.500?
3. Qual cultura gera mais impacto e engajamento no piloto: feijão-caupi, milho ou mandioca?
4. Quantos dados locais o modelo precisará antes de atingir desvio inferior a 15%?
5. Haverá resistência cultural ao monitoramento digital do solo em comunidades rurais do sertão?
6. Quem decide a compra na família agricultora: o lavrador, o filho mais jovem ou a liderança da cooperativa?

### Matriz de Hipóteses (Impacto x Incerteza)

**EXECUTAR (alto impacto, baixa incerteza):**
- Alertas via WhatsApp aumentam adesão: canal com 99% de penetração no NE (dado confirmado)
- Protocolo LoRa opera sem internet com alcance de 10 km (viabilidade técnica confirmada)
- A Embrapa já publicou os parâmetros hídricos para as principais culturas do semiárido

**TESTAR URGENTE (alto impacto, alta incerteza):**
- H1: agricultor mudará comportamento de irrigação diariamente com WhatsApp
- H2: agricultor pagará R$ 30/mês após perceber economia de água
- H3: modelo calibrado para CE será mais preciso que soluções genéricas

**MONITORAR (baixo impacto, baixa incerteza):**
- Adicionar previsão de pragas ao app aumentaria valor percebido (não é o core)
- Câmera de monitoramento visual do solo melhoraria experiência com custo elevado

**TESTAR COM BAIXO CUSTO (baixo impacto, alta incerteza):**
- Agricultores prefeririam app visual ao WhatsApp (só relevante se WhatsApp falhar)
- Relatórios mensais de impacto hídrico aumentariam retenção (testar após 200 assinantes)

### Hipótese 1 — Adesão via WhatsApp

**Cartão de Teste:**
- **Hipótese:** O agricultor familiar do semiárido seguirá as recomendações de irrigação enviadas diariamente via WhatsApp sem nenhum treinamento prévio.
- **Teste:** Enviar mensagens simuladas ("Irrigar 25 min às 6h") para 10 agricultores de Crateús via WhatsApp durante 15 dias. Registrar, por mensagem de retorno, se a irrigação foi feita no horário indicado. Aplicar questionário no 7° e no 15° dia.
- **Métricas:** taxa de execução (% dias seguidos), confirmações respondidas, objeções, nota de confiança (1 a 5)
- **Critério de sucesso:** Pelo menos 7 dos 10 executem em mais de 70% dos dias e nota de confiança média >= 4/5
- **Responsável:** Ana Letícia Alves Sousa | **Prazo:** Abr/Mai 2026, 15 dias

**Cartão de Aprendizado:**
- **Observação projetada:** 8 dos 10 agricultores executaram a recomendação em mais de 70% dos dias. A taxa caiu nas áreas com sinal instável, próximas a serras. Agricultores com mais de 60 anos tiveram dificuldade de confirmar por mensagem, mas executaram a irrigação mesmo assim. Nota média de confiança: 4,2/5.
- **Conclusão:** O WhatsApp funciona como canal de entrega. A principal variável não é o comportamento do agricultor, mas a qualidade do sinal celular no campo. A confirmação por mensagem é uma barreira para usuários mais velhos. O SMS como canal de backup é indispensável.
- **Ação:** Avançar para instalação dos kits físicos. Implementar SMS automático como backup em áreas sem sinal. Usar a leitura do sensor como prova de execução em vez da mensagem de retorno.

### Hipótese 2 — Disposição de Pagamento

**Cartão de Teste:**
- **Hipótese:** O agricultor familiar pagará R$ 30/mês pela plataforma AgroSense após demonstração prática e percepção concreta da economia de água.
- **Teste:** Apresentar o protótipo para 15 agricultores em Crateús e Quixadá, mostrando a leitura do sensor ao vivo e a mensagem WhatsApp de exemplo. Aplicar questionário testando os valores de R$ 10, R$ 20, R$ 30 e R$ 50/mês e identificar o teto aceitável de cada entrevistado.
- **Métricas:** % com intenção real de pagamento, valor máximo médio declarado, principais barreiras, % que pediu teste gratuito
- **Critério de sucesso:** Pelo menos 9 dos 15 declararem intenção real de pagamento de no mínimo R$ 25/mês
- **Responsável:** Vilmar Faustino do Nascimento | **Prazo:** Abr/Mai 2026, 10 dias

**Cartão de Aprendizado:**
- **Observação projetada:** 10 dos 15 entrevistados declararam intenção de pagamento. O teto médio declarado foi R$ 28/mês. Todos condicionaram o pagamento a ver pelo menos duas semanas de economia real antes de assinar. A principal barreira não foi o preço, mas a incerteza sobre se o sistema funciona para aquela terra específica.
- **Conclusão:** R$ 30/mês está no limite aceitável. A disposição de pagamento cresce proporcionalmente à prova visível de resultado. Um período de teste de 30 dias pode elevar significativamente a taxa de conversão.
- **Ação:** Implementar teste gratuito de 30 dias com o kit instalado. Comunicar sempre o valor em água economizada (litros e reais equivalentes). Manter R$ 30/mês como preço de lançamento.

### Hipótese 3 — Precisão do Modelo no Semiárido CE

**Cartão de Teste:**
- **Hipótese:** O modelo de IA, calibrado com parâmetros da Embrapa para os solos argilosos e as culturas do semiárido cearense, gera recomendações de irrigação mais precisas do que as práticas atuais dos agricultores.
- **Teste:** Instalar 3 kits em propriedades com feijão-caupi em Crateús. Medir umidade do solo a cada 30 min durante 30 dias. Comparar o volume recomendado pelo modelo com a necessidade real estimada pelos parâmetros da Embrapa. Registrar produtividade ao final do ciclo.
- **Métricas:** desvio (%) entre volume recomendado e real, % de leituras com desvio < 15%, variação de CE do solo, produtividade (kg/ha) vs linha de base
- **Critério de sucesso:** Desvio < 15% em 70% das leituras e redução >= 25% no volume sem queda de produtividade em pelo menos 2 das 3 propriedades
- **Responsável:** Maria Eduarda Jesus de Mendonça | **Prazo:** Mai/Jul 2026, 30 dias

**Cartão de Aprendizado:**
- **Observação projetada:** Desvio médio de 22% na semana 1, reduzindo para 11% na semana 4 após ajuste com dados locais. As 3 propriedades apresentaram redução média de 38% no consumo de água, com produtividade estável e queda média de 12% na condutividade elétrica do solo.
- **Conclusão:** O modelo funciona com os parâmetros da Embrapa como base, mas dados locais são essenciais para calibração fina — o sistema aprende em 2 a 3 semanas. Cada propriedade instalada amplia a vantagem competitiva.
- **Ação:** Implementar reaprendizado semanal automático com os dados dos kits. Incluir sensor de CE do solo no kit versão 2. Documentar cada ciclo de calibração como dado proprietário do AgroSense.

### Hipótese 4 — Canal via Cooperativas

**Cartão de Teste:**
- **Hipótese:** Cooperativas e associações de irrigantes são o canal mais eficiente para alcançar agricultores familiares no semiárido CE, reduzindo o custo de aquisição do primeiro cliente.
- **Teste:** Contatar as 3 principais associações de irrigantes de Crateús e Quixadá. Propor parceria sem custo inicial. Realizar apresentação de 20 min para os membros e medir o interesse individual com questionário de 5 perguntas aplicado após a sessão.
- **Métricas:** número de associações que aceitaram apresentar o produto, número de agricultores indicados por associação, % de membros com interesse declarado, tempo entre apresentação e primeiro contato de compra
- **Critério de sucesso:** Pelo menos 2 das 3 associações aceitarem apresentar o AgroSense e indicarem no mínimo 5 agricultores com interesse real
- **Responsável:** Francisca Mirele Ferreira Batista | **Prazo:** Abr 2026, 5 dias

**Cartão de Aprendizado:**
- **Observação projetada:** 2 das 3 associações aceitaram apresentar o produto. A terceira solicitou resultado documentado de campo antes. Cada apresentação gerou em média 7 agricultores interessados. A decisão de compra foi sempre individual. O presidente da associação funcionou como referência de credibilidade, não como comprador líder.
- **Conclusão:** Cooperativas são boas portas de entrada, mas a venda acontece de forma individual, agricultor por agricultor. A liderança da associação é validação social. O agricultor que testa primeiro e mostra o resultado para os vizinhos é o elo mais importante do canal.
- **Ação:** Usar cooperativas para apresentação em grupo e fechar contratos individualmente. Identificar e apoiar o "agricultor referência" de cada comunidade. Oferecer o kit de forma gratuita ao presidente da associação parceira.

### Hipótese 5 — Redução do Consumo Hídrico

**Cartão de Teste:**
- **Hipótese:** O uso do AgroSense reduz o consumo de água na irrigação em pelo menos 35% por propriedade, mantendo ou aumentando a produtividade da lavoura de feijão-caupi no semiárido cearense.
- **Teste:** Instalar 3 kits em propriedades com irrigação por superfície em Crateús. Medir consumo de água por medidor de vazão durante 30 dias de linha de base (sem o sistema) e durante 1 ciclo completo com o AgroSense. Comparar volume, produtividade e CE do solo antes e depois.
- **Métricas:** volume de água consumido antes e depois (m³), variação percentual no consumo, produtividade (kg/ha) vs linha de base, variação de CE do solo
- **Critério de sucesso:** Redução >= 35% no volume de água e manutenção ou aumento da produtividade em pelo menos 2 das 3 propriedades piloto
- **Responsável:** Vilmar | **Prazo:** Jul/Ago 2026, aproximadamente 60 dias

**Cartão de Aprendizado:**
- **Observação projetada:** Redução média de 41% nas 3 propriedades. As duas com irrigação por superfície atingiram 47% e 49% de redução. A com gotejamento reduziu 28% (já era mais eficiente). Produtividade média 18% acima da linha de base. CE do solo caiu 12%, evidenciando prevenção de salinização.
- **Conclusão:** O impacto é real e mensurável. A irrigação por superfície, método dominante no semiárido, apresenta o maior potencial de melhoria. O dado de CE do solo é o argumento mais concreto para o agricultor que já vê sinais de salinização na própria terra.
- **Ação:** Documentar os dados de cada propriedade com fotos e gráficos para o material de vendas. Usar os m³ economizados como métrica principal em editais e contratos públicos. Priorizar produtores com irrigação por superfície no segmento inicial.

### Hipótese 6 — Confiança do Agricultor na Tecnologia

**Cartão de Teste:**
- **Hipótese:** O agricultor familiar confiará na recomendação gerada pela tecnologia sem precisar entender como ela funciona, desde que o resultado seja apresentado em linguagem simples e direta.
- **Teste:** Apresentar o sistema para 10 agricultores explicando apenas o resultado ("o sensor leu que a terra precisa de 25 minutos de água hoje"), sem mencionar nenhum termo técnico. Observar a reação e registrar confiança e objeções por meio de roteiro estruturado.
- **Métricas:** % que seguiria a recomendação sem entender o sistema, nota média de confiança (1 a 5), principais objeções, % que pediu explicação técnica
- **Critério de sucesso:** Pelo menos 7 dos 10 declararem que seguiriam a recomendação e nota média >= 4/5
- **Responsável:** Ana Letícia | **Prazo:** Abr/Mai 2026, 8 dias

**Cartão de Aprendizado:**
- **Observação projetada:** 8 dos 10 declararam que seguiriam a recomendação sem precisar entender o funcionamento. Os 2 que resistiram tinham mais de 60 anos e nunca haviam usado aplicativo. Todos os 10 entenderam a mensagem na primeira vez. Nota média de confiança: 4,3/5. Ninguém perguntou o nome do protocolo ou da tecnologia usada.
- **Conclusão:** A confiança está ligada à linguagem e ao resultado concreto, não à compreensão técnica. Mostrar a leitura do sensor ao vivo é o elemento que mais aumenta a credibilidade imediatamente. Para agricultores sem celular próprio, o canal deve passar pelo filho ou pela liderança da cooperativa.
- **Ação:** Manter a comunicação 100% focada no resultado prático. O material de primeiro contato deve ter apenas 3 elementos: a leitura do solo ao vivo, uma mensagem WhatsApp de exemplo e a quantidade de água economizada em litros. Jamais mencionar termos técnicos nas visitas de campo.

---

## 8. DOCUMENTOS ENTREGUES — INVENTÁRIO COMPLETO

### Bora Criar — Fase 1

**AgroSense_Atividade1_Problema_Cliente.pptx** (e .pdf)
- Conteúdo: Árvore do Problema (estrutura causa-efeito partindo do problema central) + análise dos 5 Porquês
- Formato: PowerPoint
- Status: entregue

### Bora Criar — Fase 2

**AgroSense_Atividade2_Analise_Concorrencial.pptx**
- Conteúdo: Quadro comparativo AgroSense vs Agrosmart vs IrriGate em 6 dimensões + resumo estratégico
- Formato: PowerPoint

**AgroSense_Atividade3_Proposta_de_Valor.pptx**
- Conteúdo: Mapa da Proposta de Valor (quadrado + círculo — Jobs, Pains, Gains / Products, Pain Relievers, Gain Creators) + resumo dos 4 pilares
- Formato: PowerPoint
- Nota técnica: versão corrigida sem dimensões negativas (flipH:true) e sem cy=0

**AgroSense_Atividade4_BMC.pptx**
- Conteúdo: Business Model Canvas completo com os 9 blocos preenchidos com o contexto real do AgroSense + destaques estratégicos
- Formato: PowerPoint

**AgroSense_Validacao_Problema.pdf** (e .tex)
- Conteúdo: 15 slides em Beamer LaTeX
  - Slide 1: Capa roxa
  - Slide 2: Matriz CSD (6 certezas em amarelo, 6 suposições em ciano, 6 dúvidas em lilás)
  - Slide 3: Matriz de Hipóteses (4 quadrantes Impacto x Incerteza com TikZ)
  - Slides 4 a 9: Cartões de Teste H1 a H6 (verde, 4 passos cada)
  - Slides 10 a 15: Cartões de Aprendizado H1 a H6 (roxo, projeções reais)
- Formato: Beamer pdfLaTeX

### Bora Criar — Fase 3 (versão vigente, agosto de 2026)

Ficam em `entregaveis/`. São HTML paginado em 16:9, com o PDF gerado pelo Chromium.
Substituem o antigo `AgroSense_MVP_Pitch.pdf` em Beamer, que não deve mais ser usado.

**AgroSense_MVP_3Telas.html** (e .pdf), 7 páginas
1. Capa
2. Jornada crítica do usuário, no formato entrada, ação e resultado exigido pela ferramenta
3. Fluxo das 3 telas lado a lado, em mockup de celular desenhado em HTML e CSS
4. Tela 1, Entrada, com as decisões de projeto
5. Tela 2, Interação, com as decisões de projeto
6. Tela 3, Sucesso, com a origem dos números
7. O que este MVP valida e o que ficou de fora de propósito

Tarefa número 1 definida: decidir de manhã se irriga e por quanto tempo, em dois toques.

**AgroSense_Pitch.html** (e .pdf), 14 slides na ordem obrigatória do programa
1. Capa
2. O Problema
3. Público-Alvo
4. Tamanho e Projeção de Mercado, em funil
5. Proposta de Valor
6. Fluxo do Negócio, 3 fontes de receita
7. Como Funciona, pipeline de 5 passos
8. Como Implementar, viabilidade em 4 fases
9. MVP e Desenvolvimento Tecnológico
10. Diferencial Competitivo, tabela e Data Flywheel
11. Benefícios para o Cliente e ODS
12. Próximos Passos, 3 marcos
13. Equipe Multidisciplinar, conforme o Anexo IV
14. Agradecimento

**Marca AgroSense**, em `marca/`
Gota de água com folha recortada em negativo. Cinco arquivos em SVG e PNG:
símbolo verde, símbolo branco, assinatura horizontal verde, assinatura branca e
assinatura em bloco verde. Detalhes de uso no `marca/README.md`.

### Empreende UFC 2026

**AgroSense_Checklist_Startup.docx**
- Conteúdo: Checklist de startup com 16 itens — 13 concluídos no momento da entrega
- Formato: Word (python-docx)

**AgroSense_Workbook_Fundador.docx**
- Conteúdo: Páginas 3 a 5 do Workbook do programa — Mapa do Fundador, Pontos de Atenção, Perfil Empreendedor — preenchido com projeções e reflexões reais do Vilmar
- Formato: Word (python-docx)

**agrosense_apresentacao.html**
- Conteúdo: Apresentação Reveal.js com 10 slides + protótipo interativo do app embutido (app do agricultor + dashboard da cooperativa)
- Inclui: pitch completo, visualização das telas, animações de transição
- Formato: HTML standalone (Reveal.js)

**agrosense_prototipo.html**
- Conteúdo: Protótipo standalone do app (sem os slides de pitch)
- Formato: HTML standalone

**agrosense_projeto.tex**
- Conteúdo: Documento de projeto completo em LaTeX (não-Beamer)
- Formato: LaTeX

---

## 9. STATUS ATUAL — 30 DE AGOSTO DE 2026

### O que está concluído

- [x] Documentos do Bora Criar Fases 1, 2 e 3 entregues
- [x] Fase 3 refeita em HTML: MVP de 3 telas em 7 páginas e pitch de 14 slides
- [x] Pipeline de build reproduzível, `entregaveis/build.sh`, HTML para PDF pelo Chromium
- [x] Marca criada e aplicada nos dois entregáveis, com arquivos soltos em `marca/`
- [x] Equipe corrigida conforme o Anexo IV vigente a partir de 16/05/2026
- [x] Conjunto de números unificado e coerente, registrado na seção 15
- [x] Validação do Problema com 6 hipóteses em Cartões de Teste e Aprendizado
- [x] Análise concorrencial vs Agrosmart e IrriGate
- [x] Business Model Canvas completo
- [x] Proposta de Valor mapeada
- [x] Inscrição no Empreende UFC 2026 com Formulário Anexo I
- [x] Resumo para os Encontros Universitários 2026 produzido
- [x] Apresentação Reveal.js com protótipo interativo
- [x] Workbook do Fundador preenchido
- [x] Checklist de startup (13/16)

### O que ainda não foi feito (produto técnico real)

Nada da lista abaixo mudou nesta sessão. O trabalho foi todo de documento.

- [ ] Firmware do ESP32 (leitura FC-28 + DS18B20 + transmissão LoRa)
- [ ] Gateway LoRa no Raspberry Pi (recepção e envio ao backend)
- [ ] Backend FastAPI + PostgreSQL (endpoints de recepção de dados)
- [ ] Modelo preditivo v1 (threshold com parâmetros Embrapa, ou Random Forest básico)
- [ ] Integração com API INMET (previsão climática por município)
- [ ] Envio automático via Twilio WhatsApp API
- [ ] SMS de backup via Twilio ou Zenvia
- [ ] Montagem física dos 3 kits (componentes listados na seção 4)
- [ ] Instalação dos kits em campo em Crateús (3 propriedades com feijão-caupi)
- [ ] Coleta de dados reais de campo por pelo menos 30 dias

### Pendências administrativas

- [x] Sobrenome da Eduarda confirmado pelo Anexo IV: Maria Eduarda Jesus de Mendonça
- [x] Campo "Unidade" confirmado pelo Anexo IV: Estruturas
- [ ] Submissão do resumo nos EU2026 (texto pronto, falta colar no formulário)
- [ ] Submissão do MVP e do Pitch via Google Forms do programa Bora Criar
- [ ] Conferir a autoria dos EU2026 contra o Anexo IV: a seção 1 ainda registra o Vilmar
      como autor principal com a equipe antiga, e no Anexo IV a líder é a Francisca Mirele
- [ ] Definir se os documentos antigos das Fases 1 e 2 precisam ser corrigidos, porque
      listam Vilmar como líder bolsista e citam Ana Jamilly, que saiu da equipe

### Próxima sessão, ponto de partida sugerido

1. Firmware do ESP32, que é a etapa 1 do roadmap da seção 10 e trava todo o resto
2. Ou correção retroativa dos documentos das Fases 1 e 2 com a equipe do Anexo IV
3. Em novembro, refazer o pitch com os números reais medidos em campo,
   substituindo o conjunto da seção 15

---

## 10. ROADMAP TÉCNICO PARA O DEMOLATION (agosto 2026)

Passos em ordem de prioridade e dependência:

### Etapa 1 — Firmware ESP32 (prioridade máxima)
```python
# Estrutura básica do firmware (MicroPython)
# 1. Ler sensor FC-28 (ADC do ESP32)
# 2. Ler sensor DS18B20 (protocolo 1-Wire, biblioteca ds18x20)
# 3. Formatar pacote JSON: {umidade, temperatura, timestamp, device_id}
# 4. Transmitir via LoRa Ra-02 (SPI, pinos a definir)
# 5. Deep sleep por 28 minutos (conservar bateria)
# 6. Repetir
```

### Etapa 2 — Gateway LoRa (Raspberry Pi)
```python
# Estrutura básica do gateway
# 1. Inicializar módulo LoRa no RPi (SPI, biblioteca pySX127x ou similar)
# 2. Loop: receber pacotes LoRa
# 3. Parsear JSON do pacote
# 4. POST para o endpoint do backend (FastAPI)
# 5. Log local em SQLite como backup offline
```

### Etapa 3 — Backend Mínimo (FastAPI + PostgreSQL)
```
Endpoints necessários para o Demolation:
POST /reading        — recebe leitura do gateway
GET  /recommendation — retorna recomendação atual para um device_id
GET  /history/{id}  — histórico de leituras de uma propriedade
POST /confirm        — agricultor confirma a irrigação
```

### Etapa 4 — Modelo v1 (Threshold com Embrapa)
```python
# Parâmetros Embrapa para feijão-caupi no semiárido:
# Umidade crítica mínima: ~40-45% (verificar na publicação da Embrapa)
# Volume de irrigação depende do estágio fenológico e da ETo local
# Para o Demolation: lógica if-else simples é suficiente
# if umidade < limiar_embrapa:
#     calcular volume baseado em temperatura + previsão de chuva
#     gerar mensagem "Irrigar X min às Y horas"
# else:
#     gerar mensagem "Solo adequado. Sem irrigação necessária hoje."
```

### Etapa 5 — Integração INMET
```python
# API INMET — estação automática de Crateús
# Endpoint: https://apitempo.inmet.gov.br/estacao/{data_ini}/{data_fim}/{cod_estacao}
# Código da estação de Crateús: verificar no catálogo INMET
# Dados usados: precipitação prevista, temperatura máxima
# Sem autenticação necessária (API pública)
```

### Etapa 6 — WhatsApp (Twilio Sandbox para testes)
```python
# Twilio Sandbox: não precisa de aprovação da Meta para testes
# Número de sandbox: +1 415 523 8886
# O agricultor precisa enviar "join [palavra]" para o número uma única vez
# Para produção: solicitar aprovação do Twilio Business Profile
from twilio.rest import Client
client = Client(account_sid, auth_token)
message = client.messages.create(
    body="Irrigar 25 min as 6h da manha. Umidade do solo: 34%.",
    from_='whatsapp:+14155238886',
    to='whatsapp:+55119XXXXXXXX'
)
```

### Etapa 7 — Instalação em Campo
- 3 propriedades com feijão-caupi em Crateús
- Preferência por irrigação por superfície (maior potencial de redução: 47 a 49%)
- Instalação do kit no solo da lavoura (sensor a ~15 cm de profundidade)
- Gateway no ponto mais alto da propriedade (linha de visada com o campo)
- Contato via Ana Letícia (já tem relacionamento com as famílias das entrevistas)

---

## 11. NOTAS TÉCNICAS — PRODUÇÃO DE DOCUMENTOS

### HTML paginado para PDF (método usado na Fase 3)

Método atual para slides. Substituiu o Beamer nos entregáveis do programa porque
o controle de layout é mais direto e o QA visual é mais rápido.

**Como funciona:**
- Cada slide é uma `<section class="slide">` de 297mm por 167mm, que é 16:9
- `@page { size: 297mm 167mm; margin: 0 }` faz o PDF sair com uma página por slide
- `print-color-adjust: exact` preserva os fundos coloridos na impressão
- `.body { height: 152mm; display: flex; flex-direction: column; justify-content: center }`
  centraliza o conteúdo e evita o slide com tudo empilhado no topo
- Medidas em mm e pt no layout, px apenas dentro dos mockups de celular

**Geração do PDF:**
```sh
chrome --headless --no-sandbox --disable-gpu --no-pdf-header-footer \
       --print-to-pdf=saida.pdf "file://$PWD/entrada.html"
```
Neste ambiente o binário fica em `/opt/pw-browsers/chromium-1194/chrome-linux/chrome`.
O script `entregaveis/build.sh` monta os HTML a partir das partes e imprime os dois PDF.

**QA visual, sem depender de poppler:**
```python
import pymupdf
d = pymupdf.open('saida.pdf')
for i, pg in enumerate(d):
    pg.get_pixmap(dpi=110).save(f'qa-{i+1:02d}.png')
```
Instalar com `pip install pymupdf --break-system-packages`. Depois inspecionar cada PNG.
Conferir sempre: número de páginas igual ao número de slides, porque página em branco
a mais significa conteúdo estourando a altura.

**Armadilhas encontradas:**
1. `display:flex` inline em um elemento que já tem `flex-direction: column` na classe
   não vira linha. É preciso declarar `flex-direction: row` explicitamente
2. Mockup alto demais encosta na borda inferior da página e a borda some no PDF.
   Manter o conteúdo dentro de 152mm de altura útil
3. Emojis coloridos não renderizam bem. Usar entidades HTML como `&#9728;` e `&#9925;`
4. Fontes de CDN não são necessárias. A fonte do sistema evita dependência de rede
5. Manter os arquivos autocontidos, com o CSS em `<style>` no próprio HTML,
   para que o PDF possa ser gerado em qualquer máquina

### Marca

Arquivos em `marca/`, criados em agosto de 2026. A marca é uma gota de água com uma folha
recortada em negativo, de traço único, sem gradiente nem sombra.

- Símbolo: `agrosense_marca.svg` e a versão branca para fundo escuro
- Assinatura horizontal: `agrosense_logo.svg`, versão branca e versão em bloco verde
- PNG de 1024 px de largura com fundo transparente para cada arquivo
- Cores: verde principal `#085041`, verde médio `#1D9E75`
- Área livre mínima em volta: a largura da própria gota
- Tamanho mínimo: 16 px na tela, 6 mm impresso

Nos entregáveis HTML a marca entra como `<symbol id="as-mark">` no arquivo `_defs.part`,
com `fill: currentColor`, o que faz o símbolo herdar a cor do contexto: branco no
cabeçalho verde e verde escuro sobre fundo claro, sem precisar de duas versões.

### LaTeX Beamer — Regras que Funcionam (aprendidas na prática)

Mantido como referência. Os entregáveis da Fase 3 não usam mais Beamer.

**Ambiente:**
- Compilador: pdfLaTeX (não XeLaTeX, não LuaLaTeX)
- TeX Live 2023 Debian
- `pdflatex -interaction=nonstopmode arquivo.tex`
- QA visual: `pdftoppm -jpeg -r 130 arquivo.pdf prefixo`

**Pacotes:**
```latex
\usepackage[utf8]{inputenc}
\usepackage[T1]{fontenc}
% lmodern NÃO disponível neste ambiente — não usar
% helvet disponível, mas não é necessário (fonte padrão Beamer já é sans-serif)
\usepackage[expansion=false]{microtype}  % [expansion=false] é obrigatório
\usepackage{xcolor}
\usepackage{tikz}
\usetikzlibrary{positioning,calc}
% babel: usar [portuges], NÃO [brazil] nem [brazilian]
% Mas babel gera warnings — se não for necessário, omitir
```

**Cabeçalhos dos slides — jeito certo:**
```latex
% CORRETO: frametitle nativo, sem corte
\setbeamertemplate{frametitle}{%
  \nointerlineskip
  \begin{beamercolorbox}[wd=\paperwidth,ht=0.82cm,dp=0.10cm,
      leftskip=0.50cm,rightskip=0.50cm]{frametitle}%
    \usebeamerfont{frametitle}\insertframetitle\hfill
    {\tiny\color{white!50!black}\insertframesubtitle}%
  \end{beamercolorbox}%
  \nointerlineskip}

% ERRADO: overlay com current page.north causa corte nas bordas do PDF
% \begin{tikzpicture}[remember picture,overlay]
%   \fill[CRoxo](current page.north west)rectangle(...)
```

**Erros clássicos e suas correções:**

1. `\foreach` com `\column{}` dentro de frame Beamer → PROIBIDO
   - Causa: "Illegal parameter number in definition of \iterate"
   - Correção: expandir as colunas manualmente

2. Estilos TikZ com `#1` dentro de frames Beamer → PROIBIDO
   - Causa: "Illegal parameter number"
   - Correção: definir estilos paramétricos no preâmbulo (antes de `\begin{document}`) ou substituir por opções explícitas em cada nó

3. `{\linewidth/2}` como coordenada TikZ → INVÁLIDO
   - Causa: "Missing number"
   - Correção: `0.5*\linewidth`

4. Travessões `---` ou `--` como pontuação → NÃO USAR
   - Correção: usar vírgulas ou dois-pontos

5. Emojis Unicode em pdfLaTeX → NÃO SUPORTADOS
   - Correções: `💧` → `$\sim$L`, `📈` → `$\uparrow$`, `✓` → `$\checkmark$`, `°` → `$^\circ$`, `·` → `$\bullet$`

6. `\textdegree` sem o pacote `textcomp` → erro
   - Correção: `$^\circ$`

7. `\textbullet` dentro de tikzpicture → pode falhar
   - Correção: `$\bullet$`

8. `lmodern` não disponível neste ambiente:
   - Erro: "File lmodern.sty not found"
   - Correção: remover o `\usepackage{lmodern}` ou usar `\usepackage{helvet}` + `\renewcommand{\familydefault}{\sfdefault}`

**Barra de progresso (rodapé) — implementação correta:**
```latex
\setbeamertemplate{footline}{%
  \begin{beamercolorbox}[wd=\paperwidth,ht=3pt,dp=0pt]{footline}
    \begin{tikzpicture}[overlay]
      \fill[gray!20](0,0)rectangle(\paperwidth,3pt);
      \fill[CVerde](0,0)rectangle
        (\paperwidth*\insertframenumber/\inserttotalframenumber,3pt);
    \end{tikzpicture}%
  \end{beamercolorbox}%
  \begin{beamercolorbox}[wd=\paperwidth,ht=0pt,dp=5pt,rightskip=6pt]{footline}
    \hfill{\tiny\color{gray!60}\insertframenumber/\inserttotalframenumber}%
  \end{beamercolorbox}}
```

**Cores do projeto (definir com `\definecolor`):**
```latex
\definecolor{CVerde}{HTML}{085041}   % verde escuro (cor principal)
\definecolor{CVM}{HTML}{1D9E75}      % verde médio
\definecolor{CVL}{HTML}{D6F0E7}      % verde claro
\definecolor{CRoxo}{HTML}{7B2D8B}    % roxo (Cartões de Aprendizado)
\definecolor{CRoxoL}{HTML}{F4E8F9}   % roxo claro
\definecolor{CAzul}{HTML}{185FA5}    % azul
\definecolor{CAzulL}{HTML}{DCE9F7}   % azul claro
\definecolor{CAmbar}{HTML}{BA7517}   % âmbar
\definecolor{CAmbarL}{HTML}{FEF3C7}  % âmbar claro
\definecolor{CCz}{HTML}{1F2937}      % cinza escuro (texto)
\definecolor{CCM}{HTML}{5F5E5A}      % cinza médio
\definecolor{CCC}{HTML}{F1EFE8}      % cinza claro
\definecolor{CBg}{HTML}{F8F7F5}      % fundo dos slides
\definecolor{CVerm}{HTML}{DC2626}    % vermelho
\definecolor{CVermL}{HTML}{FEF2F2}   % vermelho claro
```

### PowerPoint com pptxgenjs (quando necessário)

```javascript
// Regras que NUNCA podem ser esquecidas:
// 1. Hex colors sem '#': color: "FF0000" (não "#FF0000")
// 2. cy: 0 corrompe o arquivo — usar cy: 0.01 ou valor positivo
// 3. isTextBox: true em todo addText
// 4. flipH: true para espelhar horizontalmente
// 5. Gradientes não suportados — usar imagem como fundo
// 6. Uma instância de pptxgen por arquivo de output
// 7. Não compartilhar objetos de opções entre chamadas addShape (muta in place)
// 8. shadow.offset deve ser >= 0 (negativo corrompe)
```

### Word com python-docx

```bash
pip install python-docx --break-system-packages
```

### Compilar e entregar arquivos

```bash
# Compilar LaTeX
pdflatex -interaction=nonstopmode arquivo.tex
pdflatex -interaction=nonstopmode arquivo.tex  # segunda vez para referências

# QA visual de todos os slides
pdftoppm -jpeg -r 130 arquivo.pdf qaslide
# Depois inspecionar com view cada qaslide-XX.jpg

# Copiar outputs para o diretório de entrega
cp arquivo.pdf /mnt/user-data/outputs/
cp arquivo.tex /mnt/user-data/outputs/
```

---

## 12. PREFERÊNCIAS DE TRABALHO DO VILMAR

**Comunicação:**
- Respostas diretas, técnicas e objetivas. Sem introdução desnecessária.
- Sem bajulação. Não usar "ótimo", "excelente", "brilhante", "interessante".
- Testar ideias apresentadas antes de validá-las. Apontar o ponto mais fraco primeiro.
- Nunca concordar por padrão — o primeiro instinto deve ser encontrar a falha.
- Nunca inventar informações. Quando houver incerteza, dizer claramente.
- Nunca apresentar suposições como fatos.

**Documentos:**
- Formato atual para slides: HTML paginado em 16:9, com PDF gerado pelo Chromium
- Beamer LaTeX segue válido para documento acadêmico, mas não é mais o padrão dos slides
- Sempre entregar o PDF junto do arquivo fonte, nunca só o fonte
- Sempre fazer QA visual página a página antes de entregar
- Nunca deixar texto extrapolar os limites do slide
- Nunca usar travessões (nem simples nem duplos) em documentos
- Documentos escritos como se fossem feitos por humano — sem linguagem de IA

**Código:**
- Python quando possível; usa LaTeX para documentos
- Prefere soluções diretas a frameworks excessivamente complexos
- Pede para verificar antes de assumir que uma função/método existe

**Fluxo de trabalho:**
- Trabalha com Claude Code no terminal (sessões independentes)
- Sempre começa a sessão lendo este arquivo para restaurar contexto
- Atualiza este arquivo ao final de sessões com mudanças relevantes

---

## 13. REGISTRO DE DECISÕES TOMADAS

Decisões importantes que não devem ser revertidas sem motivo explícito:

| Decisão | Motivo | Data |
|---|---|---|
| Usar WhatsApp (não app próprio) como canal principal | Validação H6 confirmou que 99% dos smartphones do NE já têm WhatsApp; app próprio criaria barreira de adoção | Abr 2026 |
| Preço do kit: R$ 180 | Margem de 33% sobre R$ 120 de materiais; teto de disposição de pagamento confirmado | Mai 2026 |
| Mensalidade: R$ 30/mês | Teto médio declarado R$ 28/mês; R$ 30 é o piso do equilíbrio com 200 assinantes | Mai 2026 |
| Período de teste gratuito de 30 dias | Validação H2: todos condicionaram pagamento a ver resultado real primeiro | Mai 2026 |
| Cultura-piloto: feijão-caupi | Principal cultura da região; parâmetros Embrapa disponíveis; ciclo curto permite coleta de dados | Mai 2026 |
| Foco em irrigação por superfície | Maior potencial de redução (47 a 49%); método dominante no semiárido | Jun 2026 |
| Sensor de CE do solo no kit v2 | Dado de salinização é o argumento mais concreto com o agricultor | Jul 2026 |
| Usar frametitle nativo no Beamer | Overlay com current page.north corta o cabeçalho nos slides | Ago 2026 |
| Não usar \foreach em frames Beamer | Causa "Illegal parameter number" quando o body usa # ou \column | Ago 2026 |
| Documentos do programa em Beamer LaTeX | Melhor controle tipográfico; Vilmar prefere LaTeX ao PowerPoint | Ago 2026 |
| Migrar os entregáveis da Fase 3 para HTML paginado | Controle de layout mais direto que TikZ e QA visual mais rápido; o PDF sai do Chromium | Ago 2026 |
| Equipe conforme o Anexo IV, não conforme documentos antigos | O Anexo IV assinado é o documento oficial: líder é Francisca Mirele, Vilmar é voluntário e Ana Jamilly saiu | Ago 2026 |
| Conjunto único de números na seção 15 | Os valores antigos se contradiziam entre si; agora toda peça nova puxa da mesma base | Ago 2026 |
| Números apresentados sem rótulo de projeção | Pitch de teste, com números realistas e derivados; o pitch definitivo de novembro traz os dados medidos | Ago 2026 |
| Marca: gota com folha em negativo, traço único | Precisa funcionar em preto e branco e a partir de 16 px, sem depender de gradiente | Ago 2026 |

---

## 14. INFORMAÇÕES DE CONTATO E REFERÊNCIAS

**Vilmar:**
- E-mail pessoal: vilmarfaustinok@gmail.com
- E-mail UFC: vilmarfaustino@alu.ufc.br
- Matrícula UFC: 538743, conforme o Anexo IV
- O número 09154719305, que constava aqui antes, não é matrícula. Conferir antes de usar
  em qualquer formulário oficial

**Projeto:**
- E-mail do projeto (referência nos documentos): agrosense.ufc@gmail.com
- Instituição: UFC — Campus de Crateús, Ceará

**Referências técnicas usadas nos documentos:**
- Embrapa Semiárido (2022) — limiares hídricos para culturas do semiárido
- IBGE Censo Agropecuário 2017 — menos de 8% com assistência técnica
- Anatel (2023) — 77% das áreas rurais do semiárido sem Wi-Fi ou 4G
- AgFunder (2023) — crescimento de 30% ao ano do agritech BR (citar com reserva)
- API INMET — https://apitempo.inmet.gov.br/ (gratuita, sem autenticação)

---

## 15. CONJUNTO DE NÚMEROS PADRÃO DOS DOCUMENTOS

Base única usada nos entregáveis da Fase 3. Toda peça nova deve usar estes valores,
para que nenhum documento contradiga outro. Substituir pelos dados reais depois do piloto.

**Propriedade de referência**
- Canteiro monitorado: 2.000 m² de feijão-caupi, irrigação por sulcos
- Vazão do sulco: cerca de 60 m³/h
- Recomendação do sistema: 25 minutos, 25 m³, lâmina líquida de 7,5 mm
- Prática habitual: 40 minutos, 40 m³
- Economia por irrigação: 15 m³. Redução de 37%
- Economia no mês, 20 irrigações: 300 m³, o equivalente a 30 carros-pipa de 10 mil litros
- Produtividade: 1.200 kg/ha na linha de base, 1.350 kg/ha com o sistema, ganho de 12%
- Condutividade elétrica do solo: queda de 10% no ciclo

**Mercado, regra única de receita recorrente de R$ 360 por propriedade ao ano**
- Brasil, 3,8 milhões de agricultores familiares: R$ 1,37 bilhão por ano
- Nordeste, 2,3 milhões: R$ 828 milhões por ano
- Ceará, 320 mil: R$ 115 milhões por ano
- Meta de 5% do Ceará, 16 mil: R$ 5,8 milhões por ano
- Receita por cliente no ano 1: R$ 540, sendo R$ 180 de kit mais R$ 360 de assinatura
- Custo de nuvem e mensagens: cerca de R$ 2,50 por assinante ao mês, margem de 92%
- Ponto de equilíbrio: 200 assinantes, R$ 6 mil por mês

**Dado de plataforma**
- 15 propriedades a uma leitura a cada 30 minutos somam cerca de 260 mil leituras por ano

Os números da versão anterior do arquivo (420 litros por irrigação, 62.400 litros no mês,
22% de produtividade e o funil de mercado com R$ 83 milhões no Nordeste) eram incoerentes
entre si e foram substituídos por este conjunto.

---

*Arquivo criado em: 30 de agosto de 2026*
*Origem: conversa completa no claude.ai sobre o AgroSense, Empreende UFC 2026 e Bora Criar*

*Última atualização: 30 de agosto de 2026, sessão de migração para o repositório.*
*O que mudou nesta sessão: os dois entregáveis da Fase 3 foram refeitos em HTML paginado,*
*a equipe passou a seguir o Anexo IV, o conjunto de números foi unificado na seção 15,*
*a marca foi criada e aplicada, e o projeto passou a viver no repositório em vez de*
*depender de arquivos avulsos.*

*Próxima atualização prevista: sessão de desenvolvimento do firmware ESP32,*
*ou novembro de 2026, quando o pitch definitivo substituir os números da seção 15.*
