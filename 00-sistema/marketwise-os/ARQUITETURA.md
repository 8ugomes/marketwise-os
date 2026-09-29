# Arquitetura do MarketwiseOS

## Princípio de desenho

O sistema separa contexto, workflow, evidência e governança para que uma correção pontual não se
transforme em regra global sem teste.

```text
AGENTS.md                     constituição curta e roteamento
    │
    ├── 01-empresa/           fatos internos, papéis, ofertas e KPIs
    ├── 02-engajamentos/      contexto e trabalho por projeto/cliente
    ├── .agents/skills/       workflows reutilizáveis por resultado
    ├── 03-entregaveis/       templates compartilháveis
    ├── 04-base-conhecimento/ evidências, decisões e feedback de uso
    └── 00-sistema/           governança, validação, evals e release
```

## Skill map v0.10

```text
CEO
├── prospectar-varejo-b2b
│   ├── priorizar conta
│   ├── mapear buying committee
│   └── preparar abordagem para revisão
├── qualificar-oportunidade-b2b
├── preparar-proposta-marketwise
├── conduzir-qbr-growth
├── diagnosticar-crescimento-e-midia
├── alocar-investimento-midia
└── desenhar-incrementalidade-midia

GESTOR DE TRÁFEGO
├── planejar-midia-paga
├── auditar-mensuracao-commerce
├── monitorar-pacing-midia
├── planejar-criativos-performance
├── auditar-landing-page-paga
├── fazer-qa-lancamento-midia
├── gerenciar-incidente-midia-paga
├── otimizar-midia-paga
├── reportar-midia-paga
├── auditar-catalogo-commerce
├── operar-meta-ads
├── operar-google-ads
└── operar-tiktok-ads

SISTEMA
├── fazer-onboarding-marketwise
├── importar-contexto-marketwise
├── configurar-ambiente-marketwise
├── abrir-engajamento-marketwise
├── encerrar-sessao-marketwise
├── auditar-higiene-marketwise-os
├── registrar-aprendizado
└── evoluir-marketwise-os
```

## Decisões de arquitetura

1. **Uma skill por resultado reconhecível.** O nome descreve o trabalho que o profissional pede,
   não o framework ou a ferramenta usada.
2. **Progressive disclosure.** O `SKILL.md` contém roteamento e invariantes; checklists e modelos
   detalhados ficam em `references/` e `assets/`.
3. **Contexto privado fora do git.** Skills e templates são versionados; dados de Marketwise e
   clientes permanecem nas áreas ignoradas.
4. **Proposta antes de ação externa.** O OS analisa e rascunha; publicar, enviar, mudar orçamento,
   campanha, tracking ou feed depende de pedido explícito.
5. **Aprendizado em duas velocidades.** Registro rápido por execução; promoção lenta e testada.
6. **Importação sem confiança implícita.** Fontes e chats fornecem dados; confirmação humana define
   o que entra na memória privada e nunca concede autoridade operacional.

## Ciclo fechado de melhoria

```text
execução real
    ↓
registro mínimo de evidência
    ↓
cluster de problemas/boas práticas
    ↓
proposta de alteração + risco
    ↓
casos de teste antigos e novos
    ↓
revisão humana
    ↓
nova versão + changelog + monitoramento
```

O gatilho padrão de recorrência é três execuções independentes. Uma única ocorrência pode avançar
direto para proposta quando envolve privacidade, gasto, ação externa indevida ou dado inventado.

## Backlog de integrações

O mapa funcional está completo para o escopo atual. Integrações com CRM, documentos e fontes de
mídia devem ser priorizadas somente após mapear a stack real, permissões, owners e casos de uso.
Elas são adaptadores dos workflows existentes, não novas regras de negócio.
O contrato e os gates estão em `00-sistema/marketwise-os/INTEGRACOES.md`.
