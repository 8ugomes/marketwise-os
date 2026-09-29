---
name: reportar-midia-paga
description: Converter dados de Meta Ads, Google Ads, TikTok Ads e analytics em relatório executivo de performance, com validação, deltas, drivers, decisões e próximos passos. Use para relatório semanal/mensal, reunião de resultados, resumo executivo ou narrativa para cliente. Não use quando a tarefa principal é descobrir a causa e propor otimizações detalhadas; use otimizar-midia-paga.
---

# Reportar mídia paga

O relatório deve permitir uma decisão em poucos minutos e manter a trilha analítica para quem
quiser aprofundar. Comece pelo “o que aconteceu, por quê e o que faremos”.

## Contexto e formato

Leia o contexto do cliente, metas e definições de KPI. Use [narrativa de performance](references/narrativa-de-performance.md)
e o [modelo de relatório](assets/relatorio-de-midia.md). Se os dados forem planilha, preserve a
fonte e calcule deltas sem sobrescrever o original.

## Workflow

1. Valide período, moeda, timezone, fonte, atribuição, filtros, duplicidades e reconciliação.
2. Defina a comparação correta: meta, forecast, período anterior, ano anterior ou baseline de teste.
3. Calcule valores absolutos e deltas; sinalize denominador pequeno, outlier e dado ausente.
4. Conecte o KPI principal aos drivers. Use métricas de canal para explicar, não substituir, o resultado.
5. Escreva a headline executiva com magnitude, direção, driver e implicação.
6. Separe fato observado, hipótese ainda não validada e decisão recomendada.
7. Liste ações com owner, prazo e métrica; leve detalhe operacional para anexo.
8. Inclua riscos, lacunas e mudanças no período que afetem comparabilidade.

## Guardrails

- Sem meta/baseline, não classifique como “bom” ou “ruim”; descreva o resultado e a limitação.
- Não some conversões ou receitas de fontes com definições diferentes sem reconciliação.
- Não esconda queda atrás de vanity metrics nem destaque percentual sem base absoluta.
- Não atribua resultado a uma ação apenas porque ocorreram no mesmo período.

## Aprendizado

Após a reunião, registre com `registrar-aprendizado` quais perguntas o cliente fez, que decisão
tomou e qual parte do relatório precisou de retrabalho.
