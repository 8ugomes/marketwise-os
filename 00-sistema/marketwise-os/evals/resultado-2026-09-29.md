# Resultado de validação — 29/09/2026

## Conclusão

**Aprovado para piloto supervisionado como `0.9.0-alpha`.** A cobertura funcional e os contratos de
segurança estão completos; validação em contas reais e promoção para beta permanecem gates humanos.

## Evidência automatizada

| Controle | Resultado |
|---|---|
| Skills catalogadas | 28/28 |
| Frontmatter e nomes | 28/28 |
| Metadata `agents/openai.yaml` | 28/28 |
| Default prompt referencia a própria skill | 28/28 |
| Referências/assets declarados | válidos |
| Seções de eval por skill | 28/28, com 144 cenários |
| Invariantes críticas | 25/25 |
| Caminhos privados de teste ignorados pelo git | 3/3 |
| Placeholders proibidos | 0 |
| Caminhos absolutos no OS | 0 |
| Resultado do validador com PyYAML | 0 erros, 0 avisos |

## Cobertura dos evals definidos

Os casos cobrem ativação direta e indireta, dados incompletos, negativo, borda, autorização,
causalidade, PII, mutação parcial, timeout/retry e ausência de conector. Eles estão definidos para
execução com dados sintéticos ou anonimizados; não foram tratados como prova de performance real.

O onboarding adiciona casos para primeiro uso, papel híbrido, recusa de persistência, perfil
existente, mudança de função, pergunta atômica e aprofundamento sob demanda.

A configuração operacional adiciona retomada, múltiplos clientes, KPI vago, conexão ausente,
credencial exposta, read-only, autorização ampla, atribuição incompleta e teste de conexão falho.

## Limites

- Não há credenciais/conectores reais de Meta, Google, TikTok, GA4 ou CRM configurados.
- Não houve mutação em conta de anúncios; os operadores estão validados estruturalmente e em modo runbook.
- As novas skills ainda não possuem três execuções independentes por workflow.
- Aprovação por CEO e gestor sênior continua necessária para beta.

## Comandos reproduzíveis

```bash
MARKETWISE_SKILL_PYTHON=<python-com-pyyaml> \
  bash 00-sistema/marketwise-os/scripts/validar-marketwise-os.sh
bash 00-sistema/marketwise-os/scripts/testar-invariantes.sh
```

## Decisão

Manter a versão em alpha supervisionada. O próximo trabalho é implantação: preencher contexto
interno, executar piloto e conectar a stack real conforme `INTEGRACOES.md`; não criar novas skills
até evidência de uma lacuna recorrente.
