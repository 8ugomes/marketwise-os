---
name: operar-meta-ads
description: Traduzir uma decisão aprovada em leitura ou mudança supervisionada no Meta Ads, com alvo inequívoco, diff, aprovação, execução mínima, readback e rollback. Use para inventário, criação, edição, pausa, publicação ou budget na plataforma quando houver acesso autorizado. Não use para diagnosticar performance; use otimizar-midia-paga.
---

# Operar Meta Ads

## Objetivo

Executar ou preparar uma operação rastreável no Meta Ads sem ampliar silenciosamente o escopo. Funciona em modo conectado ou como runbook quando nenhum conector autorizado estiver disponível.

## Pré-condições

1. Leia contexto e decisão aprovada do engajamento.
2. Consulte `references/objetos-e-riscos-meta.md` e `references/protocolo-de-mutacao.md`.
3. Confirme business/ad account ID, moeda, timezone, identidade, permissões e ambiente.
4. Para escrita, exija pedido explícito e aprovação humana do diff exato no turno atual.

## Modos

- `LEITURA`: inventário ou exportação; não altera estado.
- `PLANO`: produz diff e runbook; não altera estado.
- `EXECUÇÃO SUPERVISIONADA`: aplica somente itens aprovados e verificáveis.

## Fluxo

### 1. Resolver alvos

Liste IDs e nomes de campanha, ad set, ad, budget, pixel/dataset, catálogo e página envolvidos. Nome parecido não é identificador suficiente.

### 2. Ler estado atual

Registre timestamp, campos relevantes, status configurado/efetivo, dependências e possíveis efeitos em cascata.

### 3. Produzir diff

Use `assets/plano-de-mudanca-meta.md`. Mostre `objeto/campo: anterior → proposto`, motivo, risco, guardrail e rollback. Revalide policies e limites atuais em fonte oficial.

### 4. Obter aprovação

A aprovação deve cobrir conta, objetos, valores, moeda, data de início e efeito esperado. Mudança do diff invalida a aprovação anterior.

### 5. Executar minimamente

Faça preflight, aplique uma unidade lógica por vez, use idempotência quando disponível e guarde apenas IDs técnicos necessários — nunca tokens ou PII.

### 6. Readback

Leia novamente todos os campos alterados e dependências. `Sucesso da API` não equivale a `estado confirmado`. Em falha parcial ou timeout, investigue antes de repetir.

### 7. Registrar

Documente aprovado, executado, divergências, horário, owner, próxima checagem e condição de rollback.

## Guardrails

- Nunca selecione conta, campanha ou ad set por inferência quando o alvo é ambíguo.
- Não aumente verba, publique, pause, altere targeting, tracking ou identidade sem aprovação explícita.
- Não faça retries cegos de criação ou mutação.
- Não contorne política, revisão ou restrição da plataforma.
- Sem conector autorizado, entregue o plano e declare `não executado`.
