---
name: auditar-catalogo-commerce
description: Auditar feed e catálogo de produtos para Meta, Google ou TikTok, priorizar correções e avaliar o business case de AdsMurai. Use para catalog health, produtos rejeitados, feed desatualizado, baixa cobertura, segmentação de SKUs, criativos dinâmicos, product performance ou diagnóstico comercial de catálogo. Não use para vender AdsMurai sem diagnóstico.
---

# Auditar catálogo de commerce

Avalie o catálogo como sistema de crescimento: integridade técnica, qualidade de dados, ativação,
criatividade e retorno econômico. A recomendação pode ser AdsMurai, correção de processo,
plataforma nativa ou nenhuma mudança.

## Contexto e referências

Leia `01-empresa/ofertas.md`, o contexto do cliente e [checklist de catálogo](references/checklist-de-catalogo.md).
Quando comparar soluções, leia [critérios para AdsMurai](references/criterios-adsmurai.md). Use o
[diagnóstico de catálogo](assets/diagnostico-de-catalogo.md).

## Contrato de entrada

Solicite ou identifique: plataforma/catálogo, origem e formato do feed, frequência de atualização,
número de itens, status/erros, atributos, IDs e eventos, regras/product sets, performance por SKU,
dados de estoque/margem e processo atual. Campos ausentes viram lacunas, não suposições.

## Workflow

1. Quantifique o funil do catálogo: total → processado → elegível → ativo em anúncios → gasto →
   venda/resultado. Separe erro, aviso e oportunidade.
2. Priorize P0 elegibilidade/sincronização, P1 cobertura e precisão, P2 segmentação/performance,
   P3 criatividade/escala.
3. Verifique consistência entre feed, landing page, evento/pixel e plataforma, especialmente IDs,
   preço e disponibilidade.
4. Analise cobertura de atributos, taxonomia, variantes, títulos, descrições, URLs e imagens.
5. Avalie estratégia de product sets por objetivo, margem, estoque, sazonalidade e performance.
6. Calcule impacto potencial com premissas: SKUs recuperados, horas manuais, desperdício evitável
   ou receita/margem exposta. Não use claims comerciais como forecast.
7. Compare alternativas: corrigir processo atual, recursos nativos, AdsMurai e outras soluções.
8. Entregue roadmap, owners, dados necessários e regra para medir resultado.

## Guardrails

- Corrija saúde básica antes de recomendar automação ou criativos sofisticados.
- Diferencie capacidades públicas da AdsMurai da configuração vendida pela Marketwise.
- Não altere feed, regras, catálogo ou conexão API sem autorização e plano de rollback.
- Não exponha URLs privadas, credenciais, PII ou export completo do catálogo em arquivos versionados.

## Aprendizado

Registre com `registrar-aprendizado` o tipo de problema, correção e resultado observado, sem copiar o
catálogo do cliente.
