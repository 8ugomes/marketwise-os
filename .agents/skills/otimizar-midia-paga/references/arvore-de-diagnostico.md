# Árvore de diagnóstico de mídia

```text
gap no resultado
├── 1. mensuração
│   ├── evento, deduplicação, consentimento, atribuição
│   └── divergência plataforma × analytics × negócio
├── 2. entrega e leilão
│   ├── budget/pacing, bid/target, learning, elegibilidade
│   └── CPM/CPC, share/alcance, sazonalidade do leilão
├── 3. audiência e intenção
│   ├── mix prospecting/remarketing, saturação, overlap
│   └── termos/segmentação, qualidade do tráfego
├── 4. criativo e mensagem
│   ├── hook, oferta, formato, fadiga, diversidade
│   └── adequação à plataforma e ao estágio do funil
├── 5. oferta e experiência
│   ├── preço, promoção, estoque, frete, prazo
│   └── landing page, velocidade, CVR, checkout
├── 6. catálogo/feed
│   ├── elegibilidade, IDs, atributos, atualização
│   └── product sets, imagens, preço/estoque, eventos
└── 7. ambiente externo
    ├── calendário, concorrência, demanda, feriado
    └── mudança de mix de produto, canal ou cliente
```

## Decomposições úteis

```text
CPA = CPC ÷ CVR
CPC = CPM ÷ (1000 × CTR)
ROAS = ticket médio × CVR ÷ CPC
receita = sessões × CVR × ticket médio
```

Use aproximações somente quando definições forem compatíveis. Em catálogo, também decomponha:
itens totais → elegíveis → exibidos → clicados → convertidos → margem/retorno.
