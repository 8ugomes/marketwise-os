# Red flags de “slop” em mídia paga

## Linguagem sem decisão

| Red flag | Por que falha | Como endurecer |
|---|---|---|
| “otimizar segmentação” | não define objeto, mecanismo ou outcome | hipótese, objeto, mudança, métrica e regra |
| “escalar vencedores” | vencedor e capacidade não foram definidos | evidência, faixa marginal, tranche e rollback |
| “melhorar criativos” | não identifica conceito, variável ou aprendizado | conceito, hook/formato, teste e critério |
| “acompanhar de perto” | não há frequência, owner ou threshold | cadência, alerta, owner e ação |
| “aumentar 20%” | usa regra universal sem contexto | anterior/proposto, mecanismo, risco e aprovação |
| “a IA concluiu” | apaga fonte e responsabilidade | fatos, inferências, fonte, owner e decisão humana |

## Saltos analíticos

- CTR caiu, logo o criativo é a causa.
- ROAS da plataforma subiu, logo o negócio ganhou receita incremental.
- A landing mudou antes da queda, logo causou a queda.
- Meta e Google reportaram receita; a soma representa receita total.
- Campanha teve poucas conversões com CPA baixo; está pronta para escala.
- Spend está abaixo do plano; qualquer aceleração é melhor que underspend.
- Recomendação automática da plataforma é evidência suficiente.

Reescreva cada salto como hipótese com mecanismo, evidência a favor/contra, explicações alternativas,
risco de estar errado e teste que resolve a dúvida.

## Slop operacional

- conta ou campanha escolhida por nome parecido;
- “todas as campanhas” sem inventário e exclusões;
- budget compartilhado sem listar dependências;
- vários objetos e variáveis alterados em uma única ação opaca;
- aprovação fora do turno, vaga ou anterior a um diff atualizado;
- resposta “concluído” sem operation ID/readback;
- retry após timeout sem consultar o estado;
- plano sem condição de pausa, rollback ou momento de rechecagem.

Qualquer um destes itens impede `GO` para execução.
