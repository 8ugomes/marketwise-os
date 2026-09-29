# Protocolo de mutação segura

1. Confirme customer ID e resource names.
2. Consulte estado atual e dependências.
3. Valide query e parâmetros; gere diff exato.
4. Obtenha aprovação específica.
5. Faça novo preflight se o estado puder ter mudado.
6. Aplique unidade mínima e guarde operation/request ID sem credencial.
7. Reconsulte estado; sucesso de resposta não substitui readback.
8. Em timeout ou parcial, verifique antes de reenviar.
9. Registre final, parcial ou não executado e condição de rollback.
