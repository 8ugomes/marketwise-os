# Validação da distribuição — 29/09/2026

## Escopo

Instalação limpa em diretório temporário e simulação com Codex usando dados 100% sintéticos.
Nenhuma plataforma de anúncios, backend ou serviço externo foi acessado.

## Resultado

| Caso | Resultado | Evidência |
|---|---|---|
| Clone limpo | aprovado | Nenhum perfil, cliente ou credencial real versionado |
| Instalação repetida | aprovado | Segunda execução preservou os quatro arquivos-base |
| Descoberta do OS | aprovado | `AGENTS.md` carregado e skill de onboarding selecionada |
| Onboarding curto | aprovado | Três perguntas objetivas e confirmação antes de persistir |
| Persistência privada | aprovado | Perfil e configuração salvos somente em caminhos ignorados pelo Git |
| Readiness honesto | aprovado | Conectores não testados permaneceram bloqueados; autonomia conectada em vermelho |
| Uso de mídia paga | aprovado após correção | Contexto privado foi lido; receitas atribuídas não foram somadas; nenhuma mudança foi executada |
| Validação estática | aprovado | 28 skills, compatibilidade e 25 invariantes críticas |

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
- A publicação remota depende de autenticação do mantenedor no GitHub.
