# Validação da distribuição — 29/09/2026

## Escopo

Instalação limpa em diretório temporário e simulação com Codex usando dados 100% sintéticos.
Após a publicação, o fluxo foi repetido a partir de um clone do link remoto privado. Nenhuma
plataforma de anúncios ou backend foi acessado.

## Resultado

| Caso | Resultado | Evidência |
|---|---|---|
| Clone limpo | aprovado | Nenhum perfil, cliente ou credencial real versionado |
| Clone remoto | aprovado | `https://github.com/8ugomes/marketwise-os.git`, commit `610e999` |
| Instalação repetida | aprovado | Segunda execução preservou os quatro arquivos-base |
| Descoberta do OS | aprovado | `AGENTS.md` carregado e skill de onboarding selecionada |
| Onboarding curto | aprovado | Três perguntas objetivas e confirmação antes de persistir |
| Persistência privada | aprovado | Perfil e configuração salvos somente em caminhos ignorados pelo Git |
| Readiness honesto | aprovado | Conectores não testados permaneceram bloqueados; autonomia conectada em vermelho |
| Uso de mídia paga | aprovado após correção | Contexto privado foi lido; receitas atribuídas não foram somadas; nenhuma mudança foi executada |
| Validação estática | aprovado | 28 skills, compatibilidade e 25 invariantes críticas |

## Teste pós-publicação como usuário

1. O repositório privado foi clonado pelo endereço HTTPS.
2. O instalador foi executado duas vezes e preservou os arquivos existentes na segunda execução.
3. O usuário sintético Rafael concluiu o onboarding em quatro perguntas, incluindo a confirmação
   antes do salvamento.
4. A Loja Prisma foi configurada com baseline, metas, fontes, alçada e monitoramento sintéticos.
5. O readiness ficou AMARELO para análise local e A0/VERMELHO para conexões não testadas.
6. Em uma nova sessão, o agente encontrou o contexto ignorado pelo Git, aplicou
   `otimizar-midia-paga`, não somou atribuições de Meta e Google e não executou mudanças.

Observação de UX: no modo não interativo do Codex CLI, uma pergunta estruturada precisou ser
respondida em um turno adicional. O fluxo textual, que é o caminho principal documentado para o
usuário final, concluiu normalmente e retomou do ponto correto.

## Defeito encontrado e corrigido

Na primeira simulação de otimização, uma busca padrão respeitou o `.gitignore` e ocultou o contexto
privado. O agente concluiu incorretamente que o cliente não estava configurado.

Correção aplicada:

- `AGENTS.md` agora exige descoberta explícita de áreas privadas ignoradas;
- o validador de instalação verifica a presença dessa regra;
- o caso de regressão foi incluído em `evals/distribuicao.md`.

Na repetição, o agente leu baseline, metas, atribuição, alçada e readiness da Loja Aurora, tratou a
landing page como hipótese de baixa confiança, preservou a receita líquida do backend como fonte de
negócio e não somou R$ 180 mil de Meta com R$ 140 mil de Google.

## Limites da validação

- Claude Code e VS Code/Copilot foram validados por estrutura e instruções, não por execução real.
- Integrações reais continuam deliberadamente não configuradas.
- O repositório é privado; novos usuários precisam de acesso concedido pelo mantenedor.
