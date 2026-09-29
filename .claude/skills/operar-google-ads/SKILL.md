---
name: operar-google-ads
description: Traduzir uma decisão aprovada em consulta ou mutação supervisionada no Google Ads, com GAQL ou interface autorizada, alvo inequívoco, diff, aprovação, readback e rollback. Use para inventário, criação, edição, pausa, budget, anúncios ou configuração quando houver acesso. Não use para diagnóstico amplo de performance.
---

# Operar Google Ads

## Objetivo

Consultar ou alterar Google Ads com rastreabilidade e controle de dependências. Sem conector autorizado, produzir query/runbook validável e declarar que nada foi executado.

## Pré-condições

1. Leia contexto e decisão aprovada.
2. Consulte `references/gaql-e-objetos.md` e `references/protocolo-de-mutacao.md`.
3. Confirme manager/customer ID, moeda, timezone, permissões e versão/documentação atual.
4. Escrita requer pedido explícito e aprovação do diff exato no turno atual.

## Fluxo

### 1. Resolver recurso e escopo

Identifique customer, campaign, budget, ad group, criterion, asset, conversion action e demais recursos por ID. Valide se budget ou asset é compartilhado.

### 2. Consultar estado

Para leitura, defina recurso principal, campos, segmentos, período e filtros. Valide a consulta antes de interpretar resultado e registre timestamp/configurações.

### 3. Preparar mutação

Use `assets/plano-de-mudanca-google.md`. Mostre resource name, campo, anterior, proposto, dependências, risco e rollback. Separe mudanças que prejudiquem a interpretação de performance.

### 4. Aprovar e executar

Obtenha aprovação exata. Faça preflight, aplique a menor unidade lógica e preserve identificador da operação. Não reenvie após timeout antes de consultar estado.

### 5. Readback

Reconsulte os recursos e dependências. Diferencie sucesso técnico, aprovação/revisão e entrega efetiva. Relate falha parcial sem mascarar objetos não confirmados.

## Guardrails

- Não misture campos ou segmentos incompatíveis em uma consulta e não invente resultado quando ela falhar.
- Budget compartilhado exige listar todas as campanhas dependentes.
- Não altere budget, bid strategy, conversão, targeting, anúncio ou status sem aprovação explícita.
- Não burle políticas nem recomende evasão de revisão.
- Sem acesso válido, entregue query/runbook e marque `não executado`.
