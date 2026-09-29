# Governança de skills

## Estados

| Estado | Significado | Quem pode usar |
|---|---|---|
| rascunho | estrutura incompleta ou sem validação | mantenedor |
| piloto | validada estaticamente e em casos controlados | grupo piloto |
| liberada | passou pelo gate e tem owner | time definido |
| depreciada | substituída; mantida apenas para rastreabilidade | ninguém em novas tarefas |

## O que registrar por execução

Registre somente usos materiais: entregável produzido, decisão tomada, erro, correção do usuário ou
resultado observado. O registro contém:

- skill e versão;
- papel, tipo de tarefa e contexto mínimo;
- dados de entrada presentes/ausentes;
- resultado e evidência observável;
- nota de utilidade de 1 a 5 quando disponível;
- falha, correção ou boa prática;
- hipótese de melhoria, sem editar a skill.

Não copie dados pessoais, credenciais, listas de contatos ou dados brutos do cliente. Aponte para o
arquivo privado quando a rastreabilidade exigir.

## Gate de promoção

Uma mudança pode ser promovida quando:

1. resolve um padrão de três execuções ou uma falha única de alto risco;
2. preserva escopo e não transforma preferência isolada em regra universal;
3. tem casos positivos, indiretos, incompletos, negativos e de borda;
4. passa no validador estático;
5. não regride os casos anteriores relevantes;
6. possui owner, versão e caminho de rollback;
7. foi aprovada por um responsável humano.

## Atualização segura

- Compare a versão nova com a instalada; a instalação real é a fonte de verdade.
- Aplique mudanças em lotes pequenos e registre cada decisão no changelog.
- Nunca sobrescreva contexto privado nem customização sem mostrar a alteração.
- Preserve a versão anterior no histórico do git; não use atualização destrutiva.
- Se um teste falhar, mantenha a skill em piloto e registre o motivo.

## Cadência inicial

- Diário: capturar correções e incidentes materiais.
- Semanal durante o piloto: triagem de evidências e revisão de outputs.
- Quinzenal: promover no máximo três mudanças de maior impacto.
- Mensal: auditoria de skills órfãs, referências desatualizadas, conflitos e dados sensíveis.

## Métricas do próprio OS

- taxa de tarefas concluídas sem retrabalho;
- nota média de utilidade por skill;
- frequência de dado inventado ou sem fonte;
- tempo até primeiro output utilizável;
- percentual de recomendações com owner, métrica e prazo;
- regressões encontradas nos evals;
- melhorias promovidas que geraram resultado observado.
