# Changelog do MarketwiseOS

## 0.11.0-alpha — 29/09/2026

- Adição da skill `deslopify` como red team de decisões materiais de mídia paga.
- Separação explícita entre análise, recomendação, aprovação, execução e readback.
- Guardrails de budget: sem percentual universal, escala sem retorno marginal ou mutação sem diff aprovado.
- Gate para causalidade, atribuição, amostra, experimento, compliance, rollback e falsa execução.
- Doze casos de avaliação e sete invariantes novas para regressão.

## 0.10.0-alpha — 29/09/2026

- Adição de importação de contexto a partir de projetos, arquivos ou chats existentes.
- Prompt portátil e pacote v1 para transferir contexto sem copiar a conversa bruta.
- Validação de proveniência, conflitos, prompt injection, segredos e readiness antes de persistir.
- Onboarding e configuração passam a perguntar somente as lacunas que restarem após a importação.

## 0.9.0-alpha — 29/09/2026

- Adição de configuração operacional retomável após o onboarding pessoal.
- Cinco gates de readiness: contexto, resultados, dados/conexões, autoridade e monitoramento.
- Templates privados para configuração global e por cliente, sem armazenamento de credenciais.
- Autonomia classificada por ação, mantendo escrita sob aprovação e readback.

## 0.8.0-alpha — 29/09/2026

- Adição de onboarding de primeiro uso com até quatro perguntas curtas, uma por vez.
- Adição de perfil privado do usuário com papel, resultado, responsabilidades e alçada confirmados.
- Novo padrão global de respostas objetivas e perguntas atômicas em entrevistas de discovery.

## 0.7.0-alpha — 29/09/2026

- Adição do ciclo operacional do OS: abrir engajamento, encerrar sessão e auditar higiene.
- Reimplementação própria de padrões úteis observados no CCOS Ratos, sem copiar código sem licença.
- Fechamento do backlog funcional; integrações passam a ser adaptadores dependentes da stack real.
- Catálogo de 26 skills, onboarding atualizado, contrato de integrações e fontes públicas avaliadas.
- Validador portátil de metadata/referências e 18 testes de invariantes críticas.

## 0.6.0-alpha — 29/09/2026

- Adição de auditoria de landing page e jornada pós-clique.
- Adição de QA pré/pós-lançamento com gate GO, GO com ressalvas ou NO-GO.
- Adição de gestão de incidentes com severidade, contenção, recuperação e postmortem.

## 0.5.0-alpha — 29/09/2026

- Adição de qualificação de oportunidades, proposta consultiva e QBR de growth.
- Separação explícita entre fatos do cliente, hipóteses comerciais e campos a confirmar.
- Guardrails para escopo, claims, pricing, envio e expansão responsável.

## 0.4.0-alpha — 29/09/2026

- Adição de operadores supervisionados para Meta Ads, Google Ads e TikTok Ads.
- Padronização do fluxo de mutação: preflight, diff, aprovação, execução mínima, readback e rollback.
- Suporte a modo runbook quando nenhum conector autorizado estiver disponível.

## 0.3.0-alpha — 29/09/2026

- Adição de diagnóstico executivo de crescimento e mídia.
- Adição de alocação de investimento baseada em retorno marginal e constraints.
- Adição de desenho de incrementalidade com análise de viabilidade e validade.

## 0.2.0-alpha — 29/09/2026

- Adição de auditoria de mensuração para eventos, deduplicação, consentimento e reconciliação.
- Adição de monitoramento de pacing com projeção de fechamento e cenários de correção.
- Adição de planejamento criativo orientado a hipóteses e aprendizado.
- Ampliação do roteamento, dos casos de avaliação e da validação estrutural.

## 0.1.0-alpha — 08/09/2026

- Reposicionamento do Consulting OS como MarketwiseOS.
- Correção do caminho oficial de skills do Codex para `.agents/skills/`.
- Criação das jornadas de CEO e gestores de tráfego.
- Criação das skills iniciais de prospecção, mídia, catálogo e aprendizado.
- Adoção adaptada dos padrões de mapa de destinos, memória append-only, auditoria e atualização
  incremental observados no `dobralabs/ccos-ratos`.
- Adição de validador e release gates.
