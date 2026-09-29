# Arquitetura e evidências de sinal

## Camadas mínimas

1. **Intenção e semântica:** qual ação real o evento representa e quando deve ocorrer.
2. **Coleta:** data layer, SDK, tag ou evento de backend.
3. **Transporte:** navegador, servidor, API e retries.
4. **Identidade:** event ID, click IDs e identificadores permitidos, com consentimento.
5. **Recepção:** diagnóstico e status de evento na plataforma.
6. **Atribuição:** janela, modelo, timezone e regras de crédito.
7. **Fonte econômica:** pedido, receita líquida, margem, lead qualificado ou CRM.

## Escada de evidência

Da mais forte para a mais fraca:

- teste reproduzível com payload saneado e confirmação no destino;
- exportação ou relatório com escopo, período e configuração conhecidos;
- logs técnicos sem PII;
- documentação de implementação atualizada;
- relato do owner;
- screenshot ou impressão sem contexto.

## Regras de reconciliação

- Normalize período, timezone, moeda, status de pedido, impostos, frete, cancelamentos e atribuição.
- Compare primeiro direção e ordem de grandeza; depois faça reconciliação registro a registro quando houver autorização e necessidade.
- Calcule `gap = (fonte_plataforma - fonte_oficial) / fonte_oficial` somente quando numerador e denominador tiverem escopo comparável.
- Um gap estável pode ser explicável; um gap abrupto após mudança é um sinal de investigação.

## Critério do gate

- `GO`: eventos críticos confirmados, valor/moeda coerentes, duplicidade controlada e diferenças explicadas.
- `GO COM RESSALVAS`: limitações localizadas, conhecidas e não materiais para a decisão específica.
- `NO-GO`: conversão errada, perda/duplicidade material, valor inválido, quebra de consentimento ou fonte oficial indefinida.
