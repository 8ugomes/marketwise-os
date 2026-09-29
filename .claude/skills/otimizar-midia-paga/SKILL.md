---
name: otimizar-midia-paga
description: Diagnosticar performance de campanhas em Meta Ads, Google Ads e TikTok Ads e priorizar ações ou experimentos com base em objetivo, dados comparáveis e mudanças recentes. Use para quedas de ROAS, CPA alto, pacing, escala, volatilidade, auditoria de conta ou rotina de otimização. Não use para apenas narrar um relatório; use reportar-midia-paga.
---

# Otimizar mídia paga

Explique a causa mais provável do desvio, o grau de confiança e a próxima decisão. Evite listas
genéricas de “boas práticas” e mudanças reativas sem diagnóstico.

## Contexto e referências

Leia `01-empresa/kpis.md`, o contexto do cliente e o changelog disponível da conta. Use
[árvore de diagnóstico](references/arvore-de-diagnostico.md) e [disciplina de experimentos](references/experimentos.md).
Entregue com o [plano de otimização](assets/plano-de-otimizacao.md).

## Contrato de dados

Antes da conclusão, confirme: objetivo/KPI, período e comparação, moeda, timezone, atribuição,
evento de conversão, fonte, budget/meta, mix, volume e alterações de campanha/site/feed.
Se os dados não forem comparáveis, priorize a reconciliação e limite a força da conclusão.

## Workflow

1. Faça triagem de integridade: tracking, gasto fora do esperado, reprovação, feed/evento quebrado
   e risco de desperdício. Sinalize urgência; não altere nada sem autorização.
2. Quantifique o gap contra meta e baseline. Decomponha a métrica principal em drivers.
3. Percorra a árvore MECE: mensuração, entrega/leilão, audiência, criativo, oferta/landing page,
   catálogo/feed e ambiente externo.
4. Cruze sintomas. Exemplo: CPA piorou por CPM, CTR e/ou CVR; não conclua pela primeira métrica.
5. Separe fato, associação, hipótese e causalidade. Registre o que mudaria sua conclusão.
6. Priorize ações por impacto esperado, confiança, esforço, reversibilidade e risco.
7. Para cada ação, declare mecanismo, owner, métrica primária, guardrail, prazo e regra de decisão.
8. Quando houver incerteza material, proponha experimento com uma variável principal ou período de observação.

## Guardrails

- Não recomende “aumentar budget” sem evidência de capacidade marginal e guardrails.
- Não edite campanha, bid, orçamento, público, criativo, evento ou feed sem pedido explícito.
- Não compare janelas, objetivos ou atribuições diferentes como se fossem iguais.
- Não use recomendações automáticas da plataforma como decisão final sem avaliar o objetivo do cliente.

## Aprendizado

Registre com `registrar-aprendizado` quando o resultado do ajuste for conhecido, o gestor corrigir o
diagnóstico ou surgir um padrão replicável.
