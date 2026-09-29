---
name: operar-tiktok-ads
description: Traduzir uma decisão aprovada em leitura ou mudança supervisionada no TikTok Ads, com advertiser e objetos inequívocos, diff, aprovação, execução mínima, readback e rollback. Use para inventário, criação, edição, pausa, budget ou publicação quando houver acesso autorizado. Não use para planejar criativos ou diagnosticar toda a conta.
---

# Operar TikTok Ads

## Objetivo

Operar TikTok Ads com controle de conta, hierarquia, direitos criativos e confirmação de estado. Sem conector, produzir runbook e declarar `não executado`.

## Pré-condições

1. Leia contexto e decisão aprovada.
2. Consulte `references/objetos-e-riscos-tiktok.md` e `references/protocolo-de-mutacao.md`.
3. Confirme advertiser ID, moeda, timezone, identidade, permissões e documentação atual.
4. Escrita exige pedido explícito e aprovação do diff exato no turno atual.

## Fluxo

### 1. Resolver alvos

Identifique advertiser, campaign, ad group, ad/creative, pixel/event e audience por ID. Não presuma conta a partir de nome ou último acesso.

### 2. Ler estado

Registre status configurado, revisão, elegibilidade, entrega, budget/schedule e dependências. Timestamp e timezone são obrigatórios.

### 3. Preparar diff

Use `assets/plano-de-mudanca-tiktok.md`. Inclua anterior/proposto, nível correto do budget, moeda, riscos de learning, direitos e rollback.

### 4. Aprovar e executar

Receba aprovação específica. Faça preflight e execute a menor unidade lógica. Em criação, use chave ou busca de idempotência quando disponível.

### 5. Readback

Leia novamente objeto e dependências; diferencie criação, revisão, aprovação e entrega. Timeout ou falha parcial exige investigação antes de retry.

## Guardrails

- Não publique criativo sem direitos, identidade e compliance confirmados.
- Não mude budget, bid, targeting, evento, URL, status ou schedule sem aprovação explícita.
- Não contorne política/revisão nem inferir conta ausente.
- Não registre tokens, cookies, vídeos proprietários brutos ou PII no OS.
- Sem acesso válido, entregue plano executável e marque `não executado`.
