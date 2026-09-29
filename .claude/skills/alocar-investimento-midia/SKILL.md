---
name: alocar-investimento-midia
description: Alocar ou realocar investimento entre canais, campanhas, mercados e objetivos com base em retorno marginal, capacidade, risco e restrições. Use para cenários de budget, cortes, expansão e portfolio de mídia. Não use para simples pacing do orçamento atual nem para um plano inicial sem histórico; use monitorar-pacing-midia ou planejar-midia-paga.
---

# Alocar investimento de mídia

## Objetivo

Recomendar onde a próxima unidade de investimento cria mais valor esperado, com cenários, limites e plano reversível — sem confundir ROAS médio com retorno marginal.

## Contexto

Leia contexto, KPIs, restrições financeiras e `references/retorno-marginal.md`. Quando o problema for amplo, use antes `diagnosticar-crescimento-e-midia`.

## Contrato de entrada

Confirme budget total, moeda, horizonte, objetivo econômico, margem, metas, histórico por nível controlável, saturação, capacidade, compromissos mínimos, limites de mudança, riscos de learning e confiança de mensuração.

## Fluxo

### 1. Normalizar base

Reconcilie custo, receita/conversão, atribuição, período e granularidade. Marque linhas não comparáveis.

### 2. Estimar resposta marginal

Use experimentos, curvas históricas por faixas ou pequenos testes controlados. Se houver apenas média, trabalhe com intervalos e não extrapole linearmente.

### 3. Aplicar constraints

Considere mínimos contratuais, cobertura, capacidade, estoque, risco, diversidade de canal, learning, audiência, liquidez e calendário.

### 4. Construir cenários

Entregue pelo menos base e recomendado; adicione conservador/agressivo quando a incerteza justificar. Mostre budget anterior, proposto, delta, impacto esperado e faixa.

### 5. Planejar realocação

Prefira passos reversíveis com tranche, janela de observação, métrica primária, guardrail e gatilho de rollback. Diferencie decisão estratégica de ajuste operacional.

## Saída

Use `assets/cenarios-de-alocacao.md`. Comece pela recomendação e por quanto valor/risco ela representa.

## Guardrails

- Não altere budget ou lance sem alvo exato, autorização explícita e readback.
- Não use ROAS médio como retorno da próxima unidade monetária.
- Não corte canal de descoberta apenas por atribuição last-click sem avaliar incrementalidade.
- Não prometa impacto pontual quando a evidência suporta apenas faixa.
- Preserve trilha de valor anterior, proposto, aprovado e executado.
