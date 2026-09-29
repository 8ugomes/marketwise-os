# Roteiro adaptativo de configuração

Pergunte somente lacunas materiais. Exemplos são curtos e podem ser adaptados.

## Gate 1 — Contexto

- “Qual cliente ou operação devemos configurar primeiro?”
- “Qual decisão o OS precisa ajudar a tomar?”
- “Quais mercados, canais e entregas estão no escopo?”
- “Quem é o owner e quais mudanças recentes importam?”

## Gate 2 — Resultados

- “Qual resultado de negócio define sucesso?”
- “Qual KPI decide sucesso, com baseline e horizonte?”
- “Onde está a fonte oficial desse KPI?”
- “Quais moeda, timezone, conversão e atribuição devemos usar?”

Se o objetivo for vago, peça definição observável. Aceite `[a confirmar]`; não pressione por um
número inexistente.

## Gate 3 — Dados e conexões

- “Quais sistemas contêm mídia, analytics, vendas e catálogo?”
- “Quais contas ou propriedades pertencem a este cliente?”
- “O acesso real é leitura, escrita ou ainda não foi testado?”
- “Quem é o owner e onde a credencial é gerenciada com segurança?”

Nunca peça a credencial. Uma integração só está confirmada após teste de leitura e readback da conta.

## Gate 4 — Autoridade

- “Quais ações o OS pode analisar ou preparar sem nova aprovação?”
- “Quem aprova budget, publicação, tracking, catálogo e contato externo?”
- “Quais limites financeiros ou operacionais exigem escalonamento?”
- “Qual ação deve ser sempre proibida ou confirmada novamente?”

## Gate 5 — Monitoramento

- “Qual rotina deve rodar diariamente, semanalmente e mensalmente?”
- “Quais desvios exigem alerta e para quem?”
- “Quanto atraso de dados é aceitável?”
- “Quando o OS deve pausar, escalar ou recomendar rollback?”

## Confirmação por bloco

Mostre no máximo quatro bullets: confirmado, pendente, consequência e próximo gate. Pergunte:
“Está correto e posso salvar este bloco?”
