# Protocolo de mutação segura

1. Confirme advertiser ID e objeto por ID.
2. Leia estado, dependências, moeda e timezone.
3. Gere diff exato e registre compliance/direitos.
4. Obtenha aprovação específica.
5. Refaça preflight imediatamente antes da mudança.
6. Execute a menor unidade lógica com idempotência quando disponível.
7. Faça readback de estado, revisão e entrega.
8. Após timeout ou parcial, pesquise a operação antes de retry.
9. Registre estado final, parcial ou não executado e rollback.
