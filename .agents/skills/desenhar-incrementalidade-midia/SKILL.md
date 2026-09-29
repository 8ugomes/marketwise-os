---
name: desenhar-incrementalidade-midia
description: Desenhar estudos de incrementalidade para mídia paga, incluindo holdout, geoexperimento, lift e testes de redução, com estimando, unidade, potência, contaminação e regra de decisão. Use quando a pergunta é causal — quanto a mídia gerou além do que ocorreria. Não use para leitura rotineira de atribuição ou relatório.
---

# Desenhar incrementalidade de mídia

## Objetivo

Produzir um protocolo executável que identifique efeito causal relevante para uma decisão de investimento e declare quando um teste não é viável.

## Contexto

Leia contexto, KPIs e `references/desenhos-e-validade.md`. Consulte documentação oficial atual quando o desenho usar um produto de lift específico de plataforma.

## Contrato de entrada

Confirme pergunta decisória, tratamento, outcome, baseline, unidade elegível, volume, variância, horizonte, capacidade de holdout/supressão, spillover, calendário, orçamento e restrições éticas/operacionais.

## Fluxo

### 1. Definir estimando

Especifique população, tratamento, comparação, outcome, janela e efeito mínimo relevante. Evite “medir lift” sem decisão associada.

### 2. Escolher desenho

Priorize randomização individual quando válida; use geo ou cluster quando exposição contamina indivíduos; use teste de redução quando manter mídia integral é o maior risco. Justifique a escolha.

### 3. Avaliar viabilidade

Estime potência ou sensibilidade com baseline e variância. Teste balanceamento, número de unidades, duração, interferência, mobilidade, promoções e capacidade de execução.

### 4. Pré-especificar análise

Defina métrica, exclusões, covariáveis, método, múltiplas comparações, dados faltantes, janela e regra de decisão antes do início.

### 5. Planejar operação

Crie cronograma de preparação, A/A quando necessário, tratamento, monitoramento de integridade, análise e readout. Nomeie owner e rollback.

## Saída

Use `assets/protocolo-de-incrementalidade.md`. Se inviável, entregue estudo de viabilidade e alternativa, não um protocolo fictício.

## Guardrails

- Antes/depois ou correlação geográfica sem controle não prova causalidade.
- Não escolha outcome ou janela depois de ver o resultado.
- Não ignore contaminação, interferência, mudanças de oferta ou outros tratamentos.
- Não execute supressão, mudança de verba ou configuração sem aprovação explícita.
- Não exponha dados individuais; trabalhe no nível mínimo necessário e permitido.
