# Protocolo de mutação segura

1. Identifique plataforma, conta, ambiente e objeto por ID.
2. Leia estado atual imediatamente antes da proposta.
3. Mostre diff exato, efeitos em cascata e rollback.
4. Receba aprovação explícita do diff atual.
5. Refaça preflight se houver espera ou mudança externa.
6. Aplique a menor unidade lógica; registre request/operation ID saneado.
7. Faça readback independente.
8. Em divergência, pare; não repita até resolver se a primeira operação ocorreu.
9. Registre estado final ou parcial e condição de monitoramento.

Credenciais, cookies, tokens e payloads com PII nunca entram no repositório.
