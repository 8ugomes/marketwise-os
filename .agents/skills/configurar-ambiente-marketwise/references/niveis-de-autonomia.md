# Níveis de autonomia

Classifique por ação e sistema; não atribua um único nível ao ambiente inteiro.

| Nível | Capacidade | Exemplo | Condição |
|---|---|---|---|
| A0 | sem acesso | orientar coleta manual | nenhuma conexão |
| A1 | leitura e análise | consultar métricas, reconciliar e diagnosticar | conta e leitura testadas |
| A2 | preparação | criar relatório, rascunho ou diff de mudança | contexto e limites confirmados |
| A3 | execução supervisionada | aplicar diff após aprovação exata e fazer readback | escrita testada, owner e rollback |

## Nunca implícito

- mudança de budget, bid, status, público, anúncio ou tracking;
- publicação de creative, feed, catálogo ou mensagem externa;
- acesso ou exportação de PII;
- alteração de meta, fonte oficial ou regra de atribuição;
- retry de mutação com estado incerto.

O acesso técnico não concede autoridade. Uma autorização só vale para conta, ação, limite e janela
descritos; mudança do diff exige nova confirmação.
