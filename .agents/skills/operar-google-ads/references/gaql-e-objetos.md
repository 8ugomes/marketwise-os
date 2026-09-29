# GAQL, recursos e dependências

## Consulta

- Escolha um recurso principal e apenas campos/segmentos compatíveis.
- Declare período, filtros, moeda, timezone e nível de agregação.
- Valide a consulta com ferramenta/documentação oficial atual antes de depender do resultado.
- Cuidado com métricas repetidas ao segmentar e com recursos sem performance.

## Dependências frequentes

- Campaign budget pode ser compartilhado por múltiplas campanhas.
- Estratégia de lance pode ser de portfólio.
- Conversion action e goal podem afetar bidding e reporting em várias campanhas.
- Assets podem servir múltiplos anúncios/campanhas.
- Status elegível depende de política, billing, schedule, targets e recursos relacionados.

## Fonte normativa

Campos, compatibilidade, versões, limites e mutações mudam. Consulte Google Ads API Field Reference, Query Builder/Validator e documentação oficial na data da operação.
