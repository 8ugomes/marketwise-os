# Guardrails de decisão de mídia paga

Use este checklist quando a decisão puder alterar gasto, entrega, mensuração, experiência do usuário
ou risco reputacional. Não transforme o checklist em burocracia para uma leitura simples.

## 1. Contrato da decisão

Antes de recomendar uma mudança material, confirme ou marque `[a confirmar]`:

- cliente, plataforma, conta e objetos no escopo;
- problema e decisão que precisa ser tomada;
- objetivo econômico, KPI primário e guardrails;
- baseline, meta/faixa, período e comparação adequada;
- moeda, timezone, conversão, atribuição, fonte e freshness;
- budget aprovado, estado atual e restrições financeiras/operacionais;
- owner que prepara, recomenda, aprova, executa e monitora;
- prazo, reversibilidade e custo provável do erro.

Uma lacuna crítica não obriga paralisar tudo: autorize somente a parte segura, como leitura,
reconciliação ou desenho de teste, e bloqueie a decisão que depende do campo ausente.

## 2. Budget e retorno marginal

Não existe percentual universal seguro para escalar ou reduzir. Antes de propor mudança, mostre:

| Campo | Requisito |
|---|---|
| Estado atual | budget, gasto, pacing, performance e timestamp |
| Proposta | valor anterior → proposto, delta absoluto e percentual |
| Escopo | conta, campanha/ad set/ad group, período, moeda e início |
| Mecanismo | por que a próxima unidade de investimento deveria criar valor |
| Evidência | curva marginal, experimento, faixa histórica ou cenário nomeado |
| Capacidade | audiência, estoque, site, vendas, caixa, learning e frequência |
| Risco | exposição máxima, canibalização, saturação e custo de reversão |
| Controle | tranche, janela, métrica, guardrail, rechecagem e rollback |
| Governança | quem recomenda, quem aprova e quem executa |

- ROAS/CPA médio não é retorno da próxima unidade monetária.
- Spend abaixo do plano não justifica acelerar para “queimar verba”.
- Last-click não justifica cortar canal de descoberta sem avaliar papel e incrementalidade.
- Recomendação de budget nunca equivale a autorização de execução.
- Aumento, corte ou realocação exige aprovação explícita do usuário responsável sobre o diff atual.

## 3. Evidência e mensuração

- Normalize período, moeda, timezone, evento, atribuição, filtros e status do dia parcial.
- Não some conversões ou receitas atribuídas por plataformas diferentes.
- Use analytics/backend/CRM como âncora de negócio quando a definição for compatível; explique a
  ponte, reconciliação e limitações.
- Dado antigo, amostra pequena, mudança de mix, lag ou tracking degradado reduzem a confiança.
- Se a mensuração puder inverter a decisão, o gate é `NO-GO` para escala e `GO` apenas para corrigir
  ou coletar evidência.

## 4. Causalidade e experimentos

- Separe `FATO`, `ASSOCIAÇÃO`, `HIPÓTESE`, `PREMISSA` e `CAUSALIDADE DEMONSTRADA`.
- Sequência temporal não prova causa; liste explicações alternativas e o teste discriminante.
- CTR, CPC, CPM e frequência explicam mecanismos, mas não substituem receita, margem, lead
  qualificado ou outro outcome primário.
- Não declare vencedor sem regra definida, volume suficiente, janela completa e guardrails.
- Prefira uma variável principal por teste. Se várias mudarem por necessidade operacional, declare
  que o resultado não identifica qual mudança gerou o efeito.

## 5. Mutação segura

Recomendação pronta ainda não é execução pronta. Para mutação, exija:

1. conta e objetos identificados por ID;
2. leitura do estado imediatamente anterior;
3. diff exato com efeitos em cascata e rollback;
4. aprovação explícita no turno atual para aquele diff;
5. preflight de permissões, policy e dependências;
6. menor unidade lógica e idempotência quando aplicável;
7. readback independente de objeto e dependências;
8. registro de parcial, divergência ou sucesso confirmado.

Uma aprovação genérica, antiga ou dada para outro diff não vale. Mudança de valor, objeto, período,
conta ou risco invalida a aprovação anterior. Sem conector, responda `não executado`.

## 6. Incidente

Overspend, tracking quebrado, bloqueio ou interrupção ativa deve ser encaminhado a
`gerenciar-incidente-midia-paga`. Pressa não autoriza ação irrestrita.

- Se existir runbook pré-aprovado com alvo e limite exatos, siga-o e registre readback.
- Sem runbook, estime exposição, recomende contenção mínima e reversível e peça aprovação.
- Não espere análise perfeita para comunicar risco ativo.
- Não confunda falha de sinal com falha de entrega.

## 7. Compliance, direitos e privacidade

- Claims, depoimentos, identidade, imagem, música, catálogo e oferta precisam de fonte/direito.
- Não contorne política, consentimento, revisão ou restrição da plataforma.
- Não copie token, cookie, senha, chave, PII, payload bruto ou lista de contatos.
- Acesso técnico e cargo não concedem alçada.
