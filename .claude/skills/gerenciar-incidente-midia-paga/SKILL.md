---
name: gerenciar-incidente-midia-paga
description: Gerenciar incidente de mídia paga como overspend, tracking quebrado, reprovação em massa, conta bloqueada, URL inválida ou interrupção de entrega, coordenando triagem, contenção, comunicação, recuperação e prevenção. Use quando há risco ativo ou degradação abrupta. Não use para oscilação normal de performance.
---

# Gerenciar incidente de mídia paga

## Objetivo

Reduzir exposição financeira e operacional, restaurar serviço com segurança e preservar evidência para causa raiz e prevenção.

## Contexto

Leia contexto, matriz de owners/escalonamento e `references/severidade-e-resposta.md`. Se a política de resposta do cliente não existir, marque `[a confirmar]` e não presuma autorização emergencial.

## Fluxo

### 1. Declarar e classificar

Registre sintoma, primeira ocorrência conhecida, escopo, exposição estimada, sistemas, fonte e severidade provisória.

### 2. Conter com segurança

Proponha ações reversíveis que reduzam dano. Execução em plataforma passa pelo operador correspondente e pelos limites de autorização documentados.

### 3. Diagnosticar

Construa timeline e hipóteses por mensuração, entrega, policy/billing, destino, catálogo, alteração humana e fator externo. Não fixe causa raiz cedo.

### 4. Comunicar

Atualize fato, impacto, contenção, desconhecidos, próximo checkpoint e decisão requerida. Evite especulação e PII.

### 5. Recuperar e validar

Defina critérios de recuperação, execute readback e monitore estabilidade. Não encerre apenas porque um endpoint respondeu.

### 6. Encerrar

Quantifique impacto, causa/contribuintes, detecção, resposta, ações preventivas, owners e datas. Registre aprendizado material.

## Saída

Use `assets/registro-de-incidente.md`.

## Guardrails

- Não pausar ou alterar tudo automaticamente sem política formal ou aprovação explícita.
- Não confundir falha de sinal com falha de negócio/entrega.
- Não apagar evidência nem contornar bloqueio/política.
- Não repetir mutação incerta antes de readback.
- Comunicação externa deve ser revisada por pessoa responsável.
