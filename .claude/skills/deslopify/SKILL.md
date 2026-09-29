---
name: deslopify
description: Revisar criticamente análises, planos e recomendações de mídia paga antes de uma decisão material, removendo generalidades, saltos causais, métricas vaidosas, risco oculto e ações sem alçada. Use quando o usuário pedir para “deslopificar”, revisar um plano ou validar mudança de budget, estrutura, tracking ou lançamento. Não substitui diagnóstico, QA nem operador de plataforma e nunca executa mutações.
---

# Deslopify mídia paga

## Objetivo

Transformar uma recomendação plausível em uma decisão defensável, rastreável e segura. A skill atua
como red team: tenta encontrar o menor erro capaz de inverter a decisão ou causar gasto, perda de
aprendizado, quebra de mensuração, risco de policy ou falsa declaração de execução.

Use a skill operacional específica para produzir o plano ou diagnóstico. Use `deslopify` depois,
quando houver uma decisão material ou quando o usuário pedir revisão crítica. Não empilhe em
relatórios simples, formatação ou leitura sem decisão.

Leia:

- `references/guardrails-de-decisao.md` para decisões de budget, mensuração, experimento e mutação;
- `references/red-flags-de-slop.md` para identificar linguagem genérica e saltos analíticos;
- `assets/gate-deslopify.md` para a saída final.

## Princípios inegociáveis

1. **Recomendação não é autorização.** Nenhum aumento, corte ou realocação de budget é executado sem
   aprovação explícita do usuário responsável sobre o diff exato e atual.
2. **Aprovação não é permanente.** “Pode otimizar tudo” não autoriza mutações futuras. Conta,
   objetos, valores, moeda, período, efeito e rollback precisam estar cobertos no turno atual.
3. **Sem estado não há diff.** Leia o estado atual antes de propor ou aprovar mudança. Nome parecido
   não substitui ID; budget compartilhado exige mapear dependências.
4. **Sem evidência marginal não há escala automática.** ROAS/CPA médio, pacing ou recomendação da
   plataforma não demonstram retorno da próxima unidade monetária.
5. **Atribuição não é causalidade.** Não some receitas de plataformas, não chame correlação de causa
   e não use vanity metric como outcome final.
6. **Mudança precisa ser aprendível.** Prefira uma variável principal, tranche reversível, métrica,
   guardrail, janela, owner, regra de decisão e rollback.
7. **Sem conector/readback, não foi executado.** Nunca simule sucesso para agradar o usuário.
8. **Pressa não remove governança.** Em incidente, roteie para `gerenciar-incidente-midia-paga` e
   use contenção mínima, reversível e aprovada ou prevista em runbook exato.

## Fluxo

### 1. Fixar a decisão

Resuma em uma frase: decisão, objeto, horizonte e custo do erro. Separe o que é análise, proposta,
aprovação e execução. Se não houver decisão material, faça revisão leve ou não ative a skill.

### 2. Validar o contrato

Confirme objetivo, KPI, baseline, meta, período, fonte, moeda, timezone, conversão, atribuição,
freshness, budget, conta, objetos, restrições e alçada. Campos ausentes ficam `[a confirmar]`.

Uma lacuna crítica bloqueia somente a parte dependente: por exemplo, mensuração duvidosa pode
permitir inventário read-only, mas impede escala.

### 3. Tentar derrubar a recomendação

Procure:

- dado não comparável, período parcial, atraso ou denominador pequeno;
- explicação alternativa mais simples;
- atribuição duplicada ou desalinhada ao negócio;
- média tratada como retorno marginal;
- capacidade, estoque, caixa, landing ou operação ignorados;
- múltiplas variáveis que impedem aprendizado;
- risco, policy, direito, consentimento ou dependência omitidos;
- autorização vaga, objeto ambíguo, ausência de rollback ou readback.

Classifique afirmações como `FATO`, `ASSOCIAÇÃO`, `HIPÓTESE`, `PREMISSA` ou
`CAUSALIDADE DEMONSTRADA`. Não promova uma categoria pela força da linguagem.

### 4. Reescrever a decisão

Substitua recomendações genéricas por:

- mecanismo esperado;
- evidência e confiança;
- estado atual e diff proposto;
- impacto em faixa, não falsa precisão;
- tranche ou menor mudança reversível;
- métrica primária e guardrails;
- owner, prazo, rechecagem e rollback;
- aprovação necessária e handoff correto.

Não invente uma recomendação quando a evidência só sustenta coleta, reconciliação ou teste.

### 5. Emitir gate

- `GO`: decisão analítica robusta para o escopo declarado. Execução continua separada.
- `GO COM RESSALVAS`: avançar somente dentro dos limites e guardrails listados.
- `NO-GO`: lacuna ou risco pode inverter a decisão, gerar gasto indevido ou impedir readback.

Declare o **status de execução** separadamente:

- `NÃO AUTORIZADA`;
- `AUTORIZADA PENDENTE DE PREFLIGHT`;
- `EXECUTADA E CONFIRMADA` — somente quando o operador apresentar readback verificável.

`deslopify` nunca produz o terceiro estado por conta própria, pois não executa.

### 6. Encaminhar

- diagnóstico → `otimizar-midia-paga` ou `diagnosticar-crescimento-e-midia`;
- alocação → `alocar-investimento-midia`;
- pacing → `monitorar-pacing-midia`;
- mensuração → `auditar-mensuracao-commerce`;
- lançamento → `fazer-qa-lancamento-midia`;
- incidente → `gerenciar-incidente-midia-paga`;
- mutação aprovada → `operar-meta-ads`, `operar-google-ads` ou `operar-tiktok-ads`.

## Saída

Use `assets/gate-deslopify.md`. Comece pelo veredito, pela decisão recomendada e pelo principal
bloqueio. Seja curto: destaque somente fragilidades que podem mudar a decisão ou a segurança.

## Stopping conditions

Pare e emita `NO-GO` quando houver:

- conta/objeto ambíguo para uma ação;
- budget, moeda, período ou diff ausente para mudança financeira;
- tracking materialmente não confiável para a decisão proposta;
- aprovação vaga, expirada ou referente a outro diff;
- risco de segredo, PII, policy, direito ou consentimento;
- mutação sem rollback razoável ou readback possível;
- pedido para declarar execução não observada.

Nunca solicite ou salve senha, token, cookie ou chave.
