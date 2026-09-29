---
name: monitorar-pacing-midia
description: Monitorar ritmo de investimento de mídia paga, projetar fechamento, detectar overspend ou underspend e recomendar correções controladas por canal, campanha ou período. Use para pacing diário, semanal ou mensal, budget caps, sazonalidade e reforecast. Não use para explicar performance de CPA ou ROAS; use otimizar-midia-paga.
---

# Monitorar pacing de mídia

## Objetivo

Responder se o investimento está no ritmo correto, qual fechamento é provável e qual decisão reduz o risco sem comprometer performance ou governança.

## Contexto obrigatório

1. Leia `01-empresa/perfil-empresa.md`, `01-empresa/kpis.md` e o contexto do engajamento.
2. Consulte `references/calculos-e-alertas.md`.
3. Confirme moeda, timezone, período completo, orçamento aprovado e granularidade de controle.

## Contrato de entrada

Solicite ou marque `[a confirmar]`:

- orçamento total e por dimensão controlável;
- gasto realizado e timestamp da extração;
- início e fim do período, timezone e dias/horas de veiculação;
- curva planejada: linear, dias úteis, sazonal ou calendário promocional;
- compromissos mínimos, caps, limites de mudança e verba contingente;
- performance e capacidade marginal, quando a recomendação envolver realocação;
- mudanças recentes, atrasos de dados e owner de aprovação.

## Fluxo

### 1. Validar comparabilidade

Remova períodos incompletos mal sinalizados, normalize moeda e timezone e identifique lag de cobrança ou relatório. Não misture budget de plataforma, mídia faturada e orçamento financeiro sem ponte explícita.

### 2. Calcular ritmo

Calcule gasto esperado pela curva aprovada, pacing ratio, projeção de fechamento e gasto diário necessário. Mostre fórmula, valores e arredondamento.

### 3. Classificar risco

Classifique cada linha em `dentro da faixa`, `atenção` ou `ação`, considerando materialidade financeira, tempo restante, volatilidade e capacidade de recuperação — não apenas um limite percentual fixo.

### 4. Diagnosticar mecanismo

Separe causas: configuração/cap, entrega, elegibilidade, audiência, criativo, leilão, calendário, tracking, política/faturamento ou decisão intencional.

### 5. Recomendar correção

Ofereça cenário base, conservador e agressivo quando a incerteza for material. Cada ação deve conter valor, dimensão, janela, condição, guardrail, owner e momento de rechecagem.

## Saída

Use `assets/relatorio-de-pacing.md`. Comece pelo risco de fechamento e pela decisão recomendada. Separe fato, inferência e premissa.

## Guardrails

- Não altere orçamento, bid ou status de campanha sem pedido explícito, alvo exato e revisão humana.
- Não recomende acelerar gasto apenas para consumir verba se a capacidade marginal ou o tracking não sustentarem a decisão.
- Não trate dia parcial como dia completo.
- Não esconda risco de faturamento, crédito, política ou atraso de dados dentro de uma média.
- Preserve uma trilha de budget anterior, proposto e aprovado.
