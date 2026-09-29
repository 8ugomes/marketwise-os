# Gate de promoção

## Admissão

- três execuções independentes com o mesmo padrão; ou
- uma falha de alto risco em privacidade, gasto, ação externa ou veracidade.

## Revisão da solução

- mudança mínima resolve a causa, não apenas o exemplo;
- instruction placement correto: regra geral no `AGENTS.md`, workflow na skill, detalhe condicional
  em `references/`, formato em `assets/`, lógica determinística em `scripts/`;
- descrição continua discriminante;
- input, output, fatos proibidos e stopping conditions continuam claros.

## Testes

- pedido direto que deve ativar;
- pedido indireto equivalente;
- input incompleto;
- pedido que não deve ativar;
- caso de borda/anti-hallucination;
- regressões relevantes da versão anterior;
- quick validator e validador do MarketwiseOS aprovados.

## Liberação

- aprovação humana registrada;
- owner e versão definidos;
- changelog e rollback claros;
- resultado monitorado no piloto.
