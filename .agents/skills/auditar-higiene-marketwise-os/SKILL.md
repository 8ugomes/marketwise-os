---
name: auditar-higiene-marketwise-os
description: Auditar higiene, estrutura, privacidade, referências, placeholders, releases e acúmulo do MarketwiseOS, produzindo plano de correção seguro. Use para faxina, manutenção, revisão de saúde ou antes de compartilhar/versionar. Não apague ou mova arquivos automaticamente sem autorização explícita.
---

# Auditar higiene do MarketwiseOS

## Objetivo

Detectar riscos de privacidade, quebra estrutural e acúmulo que reduzam a confiança no OS, priorizando correções reversíveis.

Classifique achados conforme `references/severidade-de-higiene.md`.

## Fluxo

1. Rode o validador oficial e registre versão/resultado.
2. Confira `git status`, ignores e qualquer arquivo privado potencialmente exposto.
3. Verifique skills obrigatórias, frontmatter, metadata, referências, assets e placeholders.
4. Procure links/caminhos quebrados, duplicidade, arquivos órfãos, rascunhos sem status e documentação divergente.
5. Compare AGENTS, arquitetura, release, changelog, evals e número real de skills.
6. Revise credenciais, tokens, cookies, PII e conteúdo bruto desnecessário sem exibir seus valores.
7. Classifique achados por severidade, reversibilidade e owner.
8. Proponha corrigir, arquivar, consolidar ou manter. Ação destrutiva exige plano, alvo exato e aprovação.

## Saída

Use `assets/relatorio-de-higiene.md`. Comece por blockers de privacidade/release.

## Guardrails

- Auditoria é read-only por padrão.
- Não imprima segredo ou PII encontrado; reporte caminho e tipo de risco.
- Não remova arquivo útil apenas por idade.
- Não modifique conteúdo privado do cliente para “padronizar” sem necessidade.
- Não declare release saudável se validador, privacy check ou referências falharem.
