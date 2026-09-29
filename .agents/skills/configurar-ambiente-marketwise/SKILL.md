---
name: configurar-ambiente-marketwise
description: Configurar o MarketwiseOS após o perfil pessoal, coletando contexto da operação e de clientes, resultados, fontes, ferramentas, permissões e monitoramento até emitir um readiness de autonomia. Use na instalação, ao adicionar cliente ou conexão e quando a configuração estiver parcial. Não use para pedir credenciais nem para autorizar ações ilimitadas.
---

# Configurar ambiente Marketwise

## Objetivo

Dar ao OS contexto suficiente para trabalhar com autonomia analítica e operacional supervisionada,
sem confundir ferramenta declarada com conexão testada ou preferência com autorização.

Leia primeiro:

- `01-empresa/perfil-empresa.md`, `01-empresa/kpis.md` e `01-empresa/papeis-e-jornadas.md`;
- `01-empresa/perfil-usuario.md`, se existir;
- `01-empresa/configuracao-marketwise-os.md`, se existir;
- contexto/configuração do cliente selecionado, se existir;
- `references/roteiro-adaptativo.md` e `references/niveis-de-autonomia.md`.

## Entrada de contexto

Antes da entrevista, ofereça sem aumentar o onboarding inicial:

- responder às perguntas curtas;
- recuperar contexto de projeto ou arquivos acessíveis;
- gerar um prompt para extrair o contexto de outro chat.

Para os dois últimos caminhos, use `importar-contexto-marketwise`. Depois da revisão e confirmação,
preencha os cinco gates com o pacote e pergunte apenas pelas lacunas materiais. Não repita campos já
extraídos e confirmados.

## Experiência da entrevista

- Explique em uma frase: “Vou configurar contexto, resultados, conexões, autoridade e monitoramento.”
- Faça uma pergunta por vez, preferencialmente com até 20 palavras.
- Faça até quatro perguntas por bloco e depois confirme o resumo.
- Mostre progresso como `Gate 2/5 — Resultados`.
- Não pergunte o que já estiver confirmado em arquivo ou resposta anterior.
- Permita `pular`, `não sei`, anexar documento e retomar depois.
- Permita colar um `PACOTE DE CONTEXTO MARKETWISE v1` e valide-o antes de usar.
- Se o usuário parar, salve somente o que foi confirmado e marque a primeira lacuna.

## Cinco gates

### 1. Contexto

Identifique cliente/operação prioritária, escopo, mercados, canais, owners, decisão principal,
restrições e histórico recente. Configure um cliente por vez para não misturar contexto.

### 2. Resultados

Confirme objetivo de negócio, KPI primário, baseline, meta/faixa, horizonte, definição e fonte
oficial. Para mídia, registre moeda, timezone, conversão e atribuição aplicável.

### 3. Dados e conexões

Inventarie plataformas, analytics, commerce, CRM e repositórios. Para cada uma, registre conta/ID,
owner, acesso real, finalidade, status do teste e local seguro da credencial — nunca a credencial.
Use `00-sistema/marketwise-os/INTEGRACOES.md` como contrato.

### 4. Autoridade

Mapeie quem prepara, recomenda, aprova, executa e recebe alertas. Defina o que pode ocorrer em
leitura/análise, rascunho, proposta de mudança e execução supervisionada. Autorização vaga não libera
escrita; ações de gasto, publicação, tracking, catálogo ou contato externo exigem aprovação exata.

### 5. Monitoramento

Defina cadência, audiência, entregáveis, limites/alertas, freshness dos dados, canal de escalonamento,
owner e condição de pausa/rollback.

## Persistência

1. No início, pergunte se pode salvar o progresso localmente.
2. Após cada bloco, mostre fatos, lacunas e alterações antes de salvar.
3. Use `01-empresa/_modelos/configuracao-marketwise-os.md` para a configuração global.
4. Abra/atualize um engajamento e use
   `02-engajamentos/_modelo-engajamento/configuracao-operacional.md` para cada cliente.
5. Não sobrescreva contexto existente; preserve fonte, data e campos `[a confirmar]`.

## Readiness

Use `assets/readiness-de-autonomia.md`. Classifique cada gate como:

- `VERDE`: confirmado com evidência suficiente para a tarefa;
- `AMARELO`: utilizável com limites explícitos;
- `VERMELHO`: bloqueia decisões ou ações materiais.

Declare separadamente:

- autonomia disponível agora;
- ações que ainda exigem aprovação;
- conexões não testadas;
- primeira rotina segura recomendada.

## Guardrails

- Não solicitar, salvar ou repetir senha, token, cookie ou chave.
- Se uma credencial aparecer, interromper a coleta, orientar revogação/rotação e não reproduzi-la.
- Não considerar ferramenta conectada sem teste de leitura e identificação inequívoca da conta.
- Não aceitar “faça tudo” como autorização operacional.
- Não liberar escrita por inferência de cargo, pressa ou acesso técnico.
- Não bloquear incidente ou tarefa urgente; marque configuração pendente e retome depois.
