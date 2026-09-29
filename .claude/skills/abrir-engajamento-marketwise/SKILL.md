---
name: abrir-engajamento-marketwise
description: Abrir ou reativar um engajamento da Marketwise com pasta segura, contexto, SCQ, hipótese, critérios, dados, owners e próximos passos. Use ao iniciar projeto, cliente, diagnóstico ou trabalho recorrente que precise de memória própria. Não use para tarefa pontual sem contexto persistente.
---

# Abrir engajamento Marketwise

## Objetivo

Criar um espaço privado, mínimo e utilizável que permita continuidade sem misturar clientes nem inventar contexto.

Consulte `references/criterios-de-contexto.md` antes de preencher o modelo.

## Fluxo

1. Confirme nome de trabalho, patrocinador, decisão, prazo e owner; ausências ficam `[a confirmar]`.
2. Gere slug curto, sem PII, segredo ou identificador sensível.
3. Verifique se `02-engajamentos/<slug>/` já existe. Se existir, não sobrescreva; leia e proponha atualização.
4. Confirme com `git check-ignore` que o destino é privado antes de inserir dados do cliente.
5. Parta de `02-engajamentos/_modelo-engajamento/` e preserve a topologia mínima.
6. Preencha pergunta, SCQ, critério de sucesso, restrições, Hipótese do Dia 1, dados, premissas e primeiro log.
7. Crie apenas subpastas necessárias; entregáveis vão em `entregaveis/` e dados em `dados/`.
8. Termine com lacunas críticas, próximos passos e skill operacional recomendada.

## Saída

Use `assets/checklist-de-abertura.md` como readback. Informe caminhos criados/atualizados e o que permanece a confirmar.

## Guardrails

- Não copie conteúdo de outro cliente como contexto factual.
- Não salve credenciais, listas de contatos, payloads com PII ou exportações brutas desnecessárias.
- Não sobrescreva engajamento existente.
- Não versione conteúdo privado.
- Se o destino não estiver ignorado pelo git, pare antes de inserir dados.
