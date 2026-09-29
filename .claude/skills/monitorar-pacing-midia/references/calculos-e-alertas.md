# Cálculos e alertas de pacing

## Curva linear

- `progresso_temporal = tempo_decorrido / tempo_total`
- `gasto_esperado = budget * progresso_temporal`
- `pacing_ratio = gasto_real / gasto_esperado`
- `projecao_linear = gasto_real / progresso_temporal`
- `gasto_restante = budget - gasto_real`
- `ritmo_necessario = gasto_restante / unidades_de_tempo_restantes`

Use horas para cortes intradiários e dias apenas quando o dia estiver encerrado.

## Curva ponderada

Quando houver sazonalidade ou calendário promocional, use pesos cuja soma seja 100%:

- `gasto_esperado_ate_t = budget * soma_dos_pesos_ate_t`
- `projecao_ponderada = gasto_real / soma_dos_pesos_ate_t`

Documente a origem dos pesos. Não invente curva histórica.

## Faixas de decisão

Não fixe um único threshold universal. Defina faixa considerando:

- valor absoluto do desvio;
- tempo para recuperação;
- volatilidade normal da conta;
- limites de alteração e learning phase;
- eventos promocionais e capacidade marginal;
- atraso de faturamento ou atribuição.

## Alertas estruturais

- Gasto acima do cap aprovado.
- Projeção fora da tolerância financeira.
- Campanha sem entrega quando deveria investir.
- Aceleração incompatível com ROAS/CPA ou capacidade operacional.
- Budget sem owner, moeda ou período inequívoco.
- Diferença entre custo da plataforma e faturamento sem reconciliação.
