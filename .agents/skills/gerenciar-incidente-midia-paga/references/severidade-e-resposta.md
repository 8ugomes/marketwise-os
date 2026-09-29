# Severidade e resposta

Adapte limites financeiros à política aprovada do cliente.

- **SEV 1:** risco ativo material, segurança/privacidade, gasto fora de controle ou operação crítica indisponível. Coordenação imediata e checkpoints frequentes.
- **SEV 2:** impacto relevante e limitado, com workaround ou exposição controlada.
- **SEV 3:** degradação menor, sem risco financeiro material imediato; tratar no fluxo normal com owner.

## Critérios de recuperação

- Estado técnico correto confirmado por readback.
- Gasto/entrega/sinal dentro da faixa esperada por janela suficiente.
- Destino e evento ponta a ponta válidos.
- Stakeholders informados e risco residual aceito.
- Monitoramento e rollback ativos.

Postmortem deve ser sem culpa, baseado em timeline e controles, distinguindo causa raiz, contribuintes e lacunas de detecção.
