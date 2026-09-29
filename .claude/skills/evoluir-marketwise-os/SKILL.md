---
name: evoluir-marketwise-os
description: Revisar registros de uso, identificar padrões, propor uma mudança mínima em skills ou AGENTS.md, adicionar evals, validar e promover uma nova versão com aprovação humana. Use para melhorar, treinar, calibrar, auditar ou atualizar o MarketwiseOS. Não use para editar o sistema com base em feedback isolado sem evidência.
---

# Evoluir o MarketwiseOS

O objetivo é melhorar o sistema sem acumular regras contraditórias nem degradar tarefas que já
funcionam. Leia `00-sistema/marketwise-os/GOVERNANCA.md` e [gate de promoção](references/gate-de-promocao.md).

## Workflow

1. Defina escopo: uma skill, papel ou release. Leia apenas registros relevantes em
   `04-base-conhecimento/execucoes-skills/` e propostas existentes.
2. Agrupe evidências por comportamento observável. Exija três execuções independentes ou uma
   falha única de alto risco.
3. Diagnostique o menor componente responsável: description/ativação, instrução, referência,
   template, script, contexto ou regra do `AGENTS.md`.
4. Crie proposta em `04-base-conhecimento/melhorias-skills/` com evidências, mudança mínima,
   não-objetivos, risco e rollback, usando [proposta de melhoria](assets/proposta-de-melhoria.md).
5. Adicione caso que reproduz a falha em `00-sistema/marketwise-os/evals/casos.md` antes da edição.
6. Mostre a alteração proposta e peça aprovação humana antes de editar a skill ou regra durável.
7. Aplique a mudança aprovada, rode o validador e revise os casos anteriores relevantes.
8. Atualize `RELEASE.md` e `CHANGELOG.md`; registre aprovação e resultado posterior.

## Regras

- Não faça autoedição silenciosa, mesmo quando a mudança parecer óbvia.
- Não transforme texto exato de um output em teste frágil; avalie invariantes observáveis.
- Não amplie triggers para capturar tarefas não relacionadas.
- Preserve contexto privado, autorização de ações externas e limites de cada skill.
- Se a evidência for insuficiente, mantenha como observação e declare qual uso futuro validaria.
- Promova no máximo três mudanças por rodada para tornar regressões rastreáveis.
