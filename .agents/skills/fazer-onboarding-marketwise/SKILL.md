---
name: fazer-onboarding-marketwise
description: Fazer onboarding breve do usuário do MarketwiseOS, identificando papel, resultado esperado, responsabilidades e alçada para adaptar respostas e roteamento. Use no primeiro uso, quando o perfil local estiver ausente ou quando a função mudar. Não repita se o perfil estiver atual nem salve sem confirmação.
---

# Fazer onboarding Marketwise

## Objetivo

Entender quem usa o OS em menos de dois minutos e adaptar linguagem, profundidade e workflows sem
presumir responsabilidades pelo cargo.

Leia `01-empresa/papeis-e-jornadas.md` e `references/papeis-e-roteamento.md`.

## Regras de conversa

- Explique o onboarding em uma frase.
- Faça uma pergunta por vez, com até 20 palavras.
- Faça no máximo quatro perguntas, incluindo a confirmação final.
- Não acrescente análise, elogio ou contexto entre pergunta e resposta.
- Ofereça opções somente quando ajudarem; aceite a descrição livre do usuário.
- Se a resposta já cobrir um campo, não pergunte novamente.

## Perguntas

Adapte a ordem, preservando estes quatro objetivos:

1. “Qual é seu nome e papel na Marketwise?”
2. “Qual resultado você mais precisa gerar no trabalho?”
3. “Você prepara, recomenda, aprova ou executa quais decisões?”
4. Mostre o resumo e pergunte: “Está correto e posso salvar este perfil localmente?”

## Síntese

Use `assets/resumo-de-onboarding.md`. Preserve papel híbrido e diferencie cargo, responsabilidade e
alçada. Recomende no máximo três jornadas/skills iniciais.

## Persistência

Após confirmação, crie ou atualize `01-empresa/perfil-usuario.md` a partir de
`01-empresa/_modelos/perfil-usuario.md`.

- Se o arquivo existir, mostre o diff antes de alterar.
- Se o usuário não autorizar, use o contexto apenas nesta sessão.
- Registre somente nome de uso, papel, resultado, responsabilidades, alçada e preferência de resposta.
- Não registre contato, credencial, dado pessoal desnecessário ou avaliação de desempenho.

## Encerramento

Confirme em até três bullets: papel reconhecido, como o OS vai ajudar e qual primeira tarefa pode ser
executada. Depois, verifique `01-empresa/configuracao-marketwise-os.md`:

- se estiver ausente ou parcial, ofereça continuar imediatamente com `configurar-ambiente-marketwise`;
- explique que a segunda etapa pode ser feita por entrevista, leitura de projeto/arquivos ou
  importação de um pacote extraído de outro chat;
- se o usuário já tiver contexto em outro lugar, use `importar-contexto-marketwise` antes das
  perguntas operacionais para evitar repetição;
- explique que a configuração é feita em blocos curtos e pode ser retomada;
- se o usuário adiar, registre apenas que a configuração operacional está pendente.

Não force o usuário a começar uma tarefa ou completar toda a configuração na mesma sessão.

## Guardrails

- Não inferir alçada a partir do título.
- Não obrigar o usuário a escolher um único papel.
- Não repetir onboarding com perfil atual, salvo pedido ou mudança declarada.
- Não bloquear tarefa urgente; faça onboarding depois se necessário.
- Respostas detalhadas continuam disponíveis quando pedidas ou exigidas pelo risco.
