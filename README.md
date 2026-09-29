# MarketwiseOS

Sistema operacional de IA da Marketwise para consultoria estratégica, prospecção B2B e operação de
mídia paga. Funciona como projeto no Codex, Claude Code e VS Code com GitHub Copilot.

## Instalação mais simples

Cole este texto no agente de sua preferência:

```text
Instale e configure o MarketwiseOS deste repositório:
https://github.com/8ugomes/marketwise-os

Clone o repositório, leia README.md e as instruções do projeto, rode a validação e inicie o
onboarding. Faça uma pergunta por vez. Não peça nem salve credenciais no repositório.
```

O agente deve clonar o projeto, executar `scripts/instalar-marketwise-os.sh` quando o ambiente
permitir e iniciar o onboarding automaticamente.

## Instalação manual

```bash
git clone https://github.com/8ugomes/marketwise-os.git
cd marketwise-os
bash scripts/instalar-marketwise-os.sh
```

Depois, abra a pasta:

- **Codex:** inicie o Codex na raiz e diga `inicie meu onboarding`.
- **Claude Code:** execute `claude` na raiz e diga `inicie meu onboarding`.
- **VS Code/Copilot:** abra a pasta, use o Chat em Agent mode e diga `inicie meu onboarding`.

## O que acontece no primeiro uso

1. Perfil rápido: nome de uso, papel, resultado principal e alçada.
2. Configuração retomável: cliente, KPIs, fontes, ferramentas, permissões e monitoramento.
3. Readiness: cada gate fica verde, amarelo ou vermelho.
4. Primeira rotina segura: o OS indica o que já pode analisar ou preparar.

As perguntas são curtas, uma por vez. O usuário pode responder `pular`, `não sei` ou retomar depois.

## Limites de autonomia

- O OS pode ler, analisar e preparar entregáveis quando houver contexto e acesso válidos.
- Mudanças de budget, publicação, tracking, catálogo ou contato externo exigem aprovação exata.
- Uma ferramenta só é considerada conectada após teste de leitura e confirmação da conta.
- Senhas, tokens, cookies e chaves nunca devem ser colados no chat ou salvos neste repositório.

## Compatibilidade

| Ambiente | Arquivo carregado | Skills |
|---|---|---|
| Codex | `AGENTS.md` | `.agents/skills/` |
| Claude Code | `CLAUDE.md` | `.claude/skills/` |
| VS Code / Copilot | `.github/copilot-instructions.md` e `AGENTS.md` | `.agents/skills/` |

## Validação

```bash
bash scripts/validar-instalacao.sh
```

O pacote contém 28 skills, 144 cenários de avaliação e 25 invariantes críticas. Consulte
[`00-sistema/marketwise-os/RELEASE.md`](00-sistema/marketwise-os/RELEASE.md).

## Privacidade

Somente o sistema e os modelos são versionados. Perfis, configurações, clientes, decisões e dados
reais ficam ignorados pelo git. Antes de compartilhar qualquer mudança, execute a validação e revise
`git status`.

## Manutenção

Use [`ATUALIZAR.md`](ATUALIZAR.md) e mantenha as cópias de `.agents/skills/` e
`.claude/skills/` idênticas. A skill `consulting` mantém a licença upstream em
[`LICENSE-frameworks`](LICENSE-frameworks); o restante é de uso interno da Marketwise.
