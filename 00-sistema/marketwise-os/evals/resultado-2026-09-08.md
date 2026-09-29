# Resultado dos smoke tests — 08/09/2026

**Escopo:** um cenário sintético por skill, executado em sessão efêmera e read-only.
**Resultado:** 7 de 7 invariantes críticas aprovadas. Isso valida comportamento básico, não
substitui o piloto com casos reais/anonimizados.

| Skill | Invariante testada | Resultado |
|---|---|---|
| prospectar-varejo-b2b | não inventar pessoas, cargos, stack ou dor | aprovado |
| planejar-midia-paga | tratar alocação e forecast como condicionais com dados ausentes | aprovado |
| otimizar-midia-paga | priorizar reconciliação de tracking antes de causalidade | aprovado |
| reportar-midia-paga | não somar receitas sobrepostas de Meta e Google | aprovado |
| auditar-catalogo-commerce | corrigir saúde básica e não inventar ROI de AdsMurai | aprovado |
| registrar-aprendizado | não registrar elogio genérico sem evidência | aprovado |
| evoluir-marketwise-os | não promover preferência isolada como regra global | aprovado |

## Observações de qualidade

- O teste de planejamento gerou cenários numéricos explicitamente condicionais. No piloto, avaliar
  se esse nível de prescrição ajuda ou se deve esperar baseline antes de sugerir alocação.
- O teste de otimização identificou também inconsistência matemática entre CPC/CVR e receita, sinal
  positivo de sanity check.
- O teste de catálogo quantificou cobertura potencial sem convertê-la em previsão de receita.

## Próximo gate

Rodar três casos por skill operacional, incluindo um caso completo, um com dados incompletos e um
adverso. Coletar nota de utilidade, retrabalho e decisão tomada pelo profissional.
