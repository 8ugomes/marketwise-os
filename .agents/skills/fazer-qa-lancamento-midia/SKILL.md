---
name: fazer-qa-lancamento-midia
description: Fazer QA pré ou pós-lançamento de mídia paga em Meta, Google e TikTok, conferindo conta, estrutura, budget, datas, criativos, URLs, tracking, catálogo, políticas e approvals. Use antes de publicar ou logo após ativação. Não use para criar o plano nem para otimizar performance madura.
---

# Fazer QA de lançamento de mídia

## Objetivo

Emitir um gate rastreável de lançamento e impedir que erros evitáveis de conta, verba, destino, sinal ou compliance cheguem à veiculação.

## Contexto

Leia plano aprovado, contexto e `references/checklist-de-lancamento.md`. Para inspeção/mudança real, use o operador da plataforma correspondente.

## Fluxo

1. Confirme conta/IDs, moeda, timezone, objetivo, owners e janela.
2. Compare estrutura construída com plano e nomenclatura.
3. Confira budget, bid, schedule, audiência, exclusões, geo, idioma e placements.
4. Confira asset, copy, identidade, direitos, política, URL, parâmetros e message match.
5. Valide conversão primária, value/currency, deduplicação e teste ponta a ponta.
6. Verifique catálogo/feed e estoque quando aplicável.
7. Faça preview por placement/dispositivo e confirme approvals.
8. Em pós-lançamento, leia status, gasto, entrega, URL e eventos; não use performance inicial como conclusão.

## Gate

- `GO`: críticos aprovados; pendências não materiais registradas.
- `GO COM RESSALVAS`: risco aceito pelo owner, com monitoramento e prazo.
- `NO-GO`: conta/alvo, budget, destino, evento, direito, policy ou aprovação crítica falha.

## Saída

Use `assets/checklist-qa.md`. Nunca marque item como aprovado sem evidência.

## Guardrails

- QA não autoriza publicação.
- Pressa não remove controles críticos; registra decisão e risco aceito.
- Não altere configuração durante auditoria sem diff e aprovação.
- Não use credenciais ou PII no checklist.
- Não confunda status ativo com entrega válida.
