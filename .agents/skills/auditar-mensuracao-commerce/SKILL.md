---
name: auditar-mensuracao-commerce
description: Auditar mensuração de mídia e commerce em Meta Ads, Google Ads, TikTok Ads, GA4, GTM, site, app e CRM, validando eventos, valores, deduplicação, consentimento e reconciliação. Use antes de decisões de performance quando houver dúvida sobre tracking, discrepância entre plataformas, migração, implantação ou perda de sinal. Não use para otimizar campanhas com mensuração já validada; use otimizar-midia-paga.
---

# Auditar mensuração de commerce

## Objetivo

Determinar se os dados são suficientemente confiáveis para orientar investimento e produzir um plano priorizado de correção. A saída é um diagnóstico, não uma alteração direta em tags, pixels, APIs ou contas.

## Contexto obrigatório

1. Leia `01-empresa/perfil-empresa.md` e `01-empresa/kpis.md`.
2. Leia o `contexto.md` do engajamento, quando existir.
3. Consulte `references/arquitetura-de-sinal.md` e apenas a seção de plataforma relevante em `references/regras-por-plataforma.md`.
4. Trate documentação oficial atual como fonte normativa para comportamento de plataforma.

## Contrato de entrada

Confirme ou marque `[a confirmar]`:

- objetivo de negócio, KPI e fonte considerada oficial;
- plataformas, propriedades, contêineres e ambientes no escopo;
- eventos de conversão, parâmetros, moeda e timezone;
- janela de atribuição e período comparado;
- arquitetura esperada entre navegador, servidor, plataforma, analytics e CRM;
- consentimento aplicável, mudanças recentes e evidências disponíveis;
- acesso permitido: leitura, teste assistido ou apenas documentação.

Nunca aceite screenshot isolado como prova suficiente de saúde do tracking.

## Fluxo

### 1. Desenhar o caminho do sinal

Mapeie `ação do usuário → data layer/app → tag/SDK → endpoint → plataforma → analytics/CRM`. Identifique owner e fonte de evidência em cada transição.

### 2. Validar semântica e integridade

Para cada evento crítico, verifique nome, momento do disparo, ID, valor, moeda, itens, quantidade, origem, consentimento e correspondência entre ambientes. Classifique como confirmado, provável, inconclusivo ou falho.

### 3. Testar duplicidade e perda

Procure disparos múltiplos, ausência de identificador estável, deduplicação inconsistente, eventos fora de ordem, parâmetros vazios, retries e diferenças entre browser e server.

### 4. Reconciliar fontes

Compare tendências e volumes entre plataforma, analytics, backend e CRM. Não exija igualdade entre sistemas com escopos ou atribuições diferentes; explique a diferença esperada antes de classificar um gap.

### 5. Avaliar privacidade e governança

Valide se consentimento, retenção, uso de identificadores e dados pessoais respeitam a política vigente. Não copie PII para o entregável.

### 6. Emitir gate de confiança

Use um dos estados:

- `GO`: sinal crítico confiável para decisões, com limitações descritas;
- `GO COM RESSALVAS`: decisões possíveis apenas dentro dos limites listados;
- `NO-GO`: risco de decisão materialmente errada; corrigir antes de escalar ou otimizar.

### 7. Priorizar correções

Cada ação deve conter hipótese, falha observada, evidência, impacto decisório, owner, dependência, prazo e teste de aceite. Separe correções de instrumentação, configuração, consentimento, reconciliação e processo.

## Saída

Use `assets/diagnostico-de-mensuracao.md`. Comece pela conclusão, separe fatos, inferências e premissas, apresente a matriz de eventos e finalize com gate, prioridades e próximos passos.

## Guardrails

- Não publique tags, altere eventos, importe conversões nem mude configuração sem pedido explícito e revisão humana.
- Não exponha tokens, cookies, IDs pessoais ou payloads brutos com PII.
- Não atribua discrepância automaticamente a erro; primeiro normalize timezone, janela, escopo e modelo de atribuição.
- Não declare causalidade quando a evidência é apenas observacional.
- Se faltar acesso, entregue plano de coleta e reduza a confiança do diagnóstico.
