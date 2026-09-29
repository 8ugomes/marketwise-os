---
name: registrar-aprendizado
description: Registrar evidência mínima de uma execução de skill, incluindo resultado, feedback, erro, correção ou boa prática, sem alterar a skill. Use após trabalho material, resultado observado ou correção do usuário. Não use para conversa trivial, opinião sem evidência ou para promover mudanças no sistema.
---

# Registrar aprendizado

Capture o que poderá melhorar uma decisão futura sem transformar o arquivo em diário verboso.

## Quando registrar

Registre quando houver pelo menos um destes sinais:

- entregável usado para uma decisão;
- feedback específico do CEO, gestor ou cliente;
- erro, ação indevida evitada ou dado que precisou ser corrigido;
- resultado posterior de recomendação, teste ou campanha;
- padrão novo com possibilidade de repetição.

Não registre elogio genérico, conversa trivial ou conteúdo sem consequência.

## Workflow

1. Identifique skill, versão/data, papel, tarefa e resultado observável.
2. Separe fato, interpretação e hipótese de melhoria.
3. Minimize dados: referencie o arquivo privado; não copie PII, credenciais ou dataset bruto.
4. Classifique risco: alto para privacidade, gasto, ação externa indevida ou dado inventado;
   médio para decisão/retrabalho relevante; baixo para clareza ou conveniência.
5. Crie um arquivo em `04-base-conhecimento/execucoes-skills/` com nome
   `AAAA-MM-DD--<skill>--<slug>.md`, usando [registro de execução](assets/registro-de-execucao.md).
6. Se houver registro equivalente, mantenha ambos e referencie o padrão; não reescreva o anterior.
7. Diga em uma linha o que foi registrado e que nenhuma skill foi alterada.

## Boundaries

- Esta skill é append-only: não edita skills nem decisões antigas.
- Não invente nota de utilidade; deixe `[não coletada]`.
- Não eleve uma preferência isolada a regra universal.
- Uma falha de alto risco deve ser destacada para revisão com `evoluir-marketwise-os`.
