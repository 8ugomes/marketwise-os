# Contrato de integrações do MarketwiseOS

## Estado

O OS é funcional em modo de análise e runbook. Nenhum conector de conta de anúncios ou CRM está
declarado como configurado neste repositório. Credenciais e IDs reais permanecem fora do git.

Use `configurar-ambiente-marketwise` para inventariar e testar conexões sem coletar credenciais.

## Princípio

Integrações são adaptadores dos workflows existentes. Elas não podem criar um caminho alternativo
que ignore contexto, autorização, diff, readback, privacidade ou registro de decisão.

## Interface mínima de um adaptador

| Capacidade | Requisito |
|---|---|
| Descoberta | listar contas acessíveis sem selecionar uma por inferência |
| Leitura | declarar conta, IDs, campos, período, timezone, moeda e timestamp |
| Preflight | validar permissão, alvo, estado atual, dependências e limites |
| Proposta | produzir diff exato e rollback antes de qualquer escrita |
| Aprovação | vincular aprovação ao diff, conta e momento atuais |
| Escrita | menor unidade lógica, idempotência e identificador de operação |
| Readback | reconsultar estado e dependências; detectar parcial/divergência |
| Auditoria | registrar quem/como/quando sem salvar segredo ou PII |

## Prioridade por fonte

1. Meta Ads: campanhas, ad sets, ads, budgets, status, insights, datasets e catálogos.
2. Google Ads: GAQL, recursos, budgets, conversões, anúncios e mutações.
3. TikTok Ads: campanhas, ad groups, ads, budgets, status e eventos.
4. GA4/GTM/backend: eventos, ecommerce e reconciliação.
5. CRM/commerce: lead qualificado, pedido, receita líquida, margem e reversões.

## Gate de conexão

Antes de habilitar escrita:

- owner e finalidade aprovados;
- princípio de menor privilégio;
- conta/advertiser/customer IDs registrados em área privada;
- ambiente sandbox ou objeto de teste quando disponível;
- teste de leitura, preflight, mutação reversível e readback;
- comportamento de timeout, retry, parcial e rate limit testado;
- runbook de revogação e incidente;
- avaliação de privacidade e retenção concluída.

## Registro privado recomendado

Manter em `01-empresa/` ou no contexto do engajamento apenas: sistema, owner, finalidade, conta/ID,
nível de acesso, data da última validação e local seguro da credencial. Nunca copiar a credencial.
