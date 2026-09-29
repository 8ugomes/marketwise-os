# Atualizar o MarketwiseOS

1. Faça a alteração primeiro em `.agents/skills/`.
2. Replique a mesma pasta em `.claude/skills/`.
3. Atualize casos, release e changelog.
4. Execute `bash scripts/validar-instalacao.sh`.
5. Revise `git status` e confirme que nenhum contexto privado entrou no commit.

Mudanças de comportamento seguem `evoluir-marketwise-os`: evidência, proposta, evals, aprovação,
validação e promoção. Não sobrescreva perfis ou configurações preenchidas durante uma atualização.
