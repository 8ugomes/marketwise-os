# Release do MarketwiseOS

**Versão:** 0.11.0-alpha
**Data:** 29/09/2026
**Estado:** piloto interno; não liberado para todo o time.

**Cobertura:** funcionalmente completa para o escopo atual; 30 skills, 166 cenários de eval e 37
invariantes críticas. Resultado recente em `evals/resultado-deslopify-2026-09-29.md`.

## Conteúdo da versão

- Constituição do MarketwiseOS no `AGENTS.md`.
- Contexto inicial de papéis, jornadas, ofertas e KPIs.
- Oito skills de consultoria, growth e ciclo comercial.
- Quatorze skills para planejar, operar, controlar e avaliar mídia paga.
- Oito skills de onboarding, configuração, ciclo operacional, aprendizado e governança do OS.
- Validação estática, suite inicial de cenários e governança de release.
- Auditoria de mensuração com gate GO/NO-GO e reconciliação entre fontes.
- Monitoramento de pacing com curvas lineares ou ponderadas e trilha de aprovação.
- Planejamento criativo com matriz de conceitos, briefs e learning agenda.
- Diagnóstico de crescimento conectando unit economics, funil e mídia.
- Alocação de budget por retorno marginal, constraints e cenários.
- Protocolos de incrementalidade com gate de viabilidade e validade causal.
- Operadores supervisionados para Meta Ads, Google Ads e TikTok Ads, independentes de conector.
- Ciclo comercial consultivo de discovery, proposta e QBR.
- QA de landing page e lançamento, além de resposta estruturada a incidentes de mídia.
- Abertura de engajamento, encerramento seletivo de sessão e auditoria de higiene do OS.
- Onboarding breve por papel, perfil privado confirmado e padrão de comunicação objetiva.
- Configuração operacional em cinco gates: contexto, resultados, conexões, autoridade e monitoramento.
- Importação segura de contexto por leitura de projeto/arquivos ou prompt portátil para outro chat.
- Pacote v1 com proveniência, conflitos, sanitização, readiness e confirmação antes de persistência.
- Gate `deslopify` para remover generalidades, saltos causais e mudanças sem alçada antes da ação.
- Aprovação de budget separada da recomendação, com diff atual, tranche, rollback e handoff ao operador.

## Gate para beta

- [x] Arquitetura e boundaries definidos.
- [x] Skills passam no validador estrutural.
- [x] Cenários de ativação e anti-hallucination definidos.
- [x] Smoke test sintético executado nas sete skills iniciais; 7/7 invariantes críticas aprovadas.
- [x] Validação estrutural das 30 skills e 37 invariantes críticas sem erros.
- [x] Casos diretos, indiretos, incompletos, negativos e de borda definidos para as novas skills.
- [x] Onboarding possui gate de consentimento, papel híbrido e fallback sem persistência.
- [x] Configuração operacional diferencia acesso declarado, testado e autoridade efetiva.
- [x] Importação trata fontes como dados não confiáveis, remove segredos e exige confirmação.
- [x] Deslopify separa análise, recomendação, aprovação e execução, sem operar plataformas.
- [ ] As três skills da v0.2 passam em execução comportamental dos casos de ativação, borda e autorização.
- [ ] As três skills da v0.3 passam em execução comportamental de causalidade, budget e dados incompletos.
- [ ] Os três operadores passam em testes sandboxados de alvo, parcial, retry e readback.
- [ ] O ciclo comercial é validado pelo CEO em oportunidade anonimizada.
- [ ] QA e incidente passam em simulação com falha de tracking e overspend.
- [ ] Ciclo do OS é testado em workspace temporário, incluindo privacy gate e não sobrescrita.
- [ ] Onboarding é concluído por um usuário que não participou da construção, sem ajuda do autor.
- [ ] Uma configuração completa é testada com cliente anonimizado e conexões read-only.
- [ ] A importação é validada por um usuário externo com um chat real anonimizado.
- [ ] Deslopify é validada por dois gestores em decisões anonimizadas de budget e tracking.
- [ ] Cada skill operacional executada em pelo menos três casos realistas ou anonimizados.
- [ ] CEO valida uma ficha de prospecção e uma sequência de abordagem.
- [ ] Gestor sênior valida plano, diagnóstico, relatório e auditoria de catálogo.
- [ ] Critérios de ICP, metas, stack e owners preenchidos em `01-empresa/`.
- [ ] Revisão de privacidade e compartilhamento concluída.

## Gate para liberação ao time

- [ ] Taxa de aprovação sem retrabalho crítico ≥ 80% no piloto.
- [ ] Zero ações externas, números internos ou contatos inventados.
- [ ] Instruções de onboarding testadas por alguém que não construiu o sistema.
- [ ] Owner e cadência de manutenção definidos.
- [ ] Rollback testado em uma mudança de skill.

Até cumprir o gate, os outputs são rascunhos supervisionados.
