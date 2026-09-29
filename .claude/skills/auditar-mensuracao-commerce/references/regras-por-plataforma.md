# Regras condicionais por plataforma

Use como checklist de investigação, não como substituto da documentação oficial atual.

## Google Ads e GA4/GTM

- Confirme ação primária versus secundária, origem, contagem, janela e inclusão em objetivos.
- Verifique linking, auto-tagging/click IDs quando aplicável e importações duplicadas.
- Em ecommerce, valide `transaction_id`, `value`, `currency` e array de itens.
- Diferencie evento coletado no GA4 de conversão efetivamente usada para bidding no Google Ads.

## Meta Ads

- Valide correspondência entre Pixel e Conversions API, `event_name`, `event_time`, `event_id`, valor e moeda.
- Verifique deduplicação browser/server e domínio/origem do evento.
- Interprete qualidade de correspondência como diagnóstico parcial, não como prova isolada de performance.

## TikTok Ads

- Valide Pixel/Events API, nome do evento, timestamp, ID, valor, moeda e deduplicação.
- Confirme se o evento selecionado para otimização é o evento auditado.

## CRM e conversões offline

- Defina o marco comercial: MQL, SQL, proposta, venda ou receita reconhecida.
- Valide chaves de junção permitidas, latência, retries, status e reversões.
- Nunca mova lista de contatos ou PII para arquivos do OS; use contagens e amostras saneadas.

## Atualidade

Quando uma recomendação depender de configuração, limite ou funcionalidade atual, registre URL oficial e data de consulta. Se a fonte não puder ser verificada, marque `[a confirmar]`.
