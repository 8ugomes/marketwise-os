#!/usr/bin/env bash
set -u

cd "$(dirname "$0")/../../.." || exit 1
errors=0
checks=0

check() {
  file=$1
  pattern=$2
  label=$3
  checks=$((checks + 1))
  if ! grep -Eiq "$pattern" "$file"; then
    printf 'ERRO: invariante ausente — %s (%s)\n' "$label" "$file"
    errors=$((errors + 1))
  fi
}

check .agents/skills/auditar-mensuracao-commerce/SKILL.md 'GO COM RESSALVAS|NO-GO' 'gate de confiança'
check .agents/skills/monitorar-pacing-midia/SKILL.md 'dia parcial|intradiári' 'tratamento de período parcial'
check .agents/skills/planejar-criativos-performance/SKILL.md 'uma variável principal' 'teste criativo interpretável'
check .agents/skills/diagnosticar-crescimento-e-midia/SKILL.md 'fatos, inferências e premissas' 'disciplina de evidência'
check .agents/skills/alocar-investimento-midia/SKILL.md 'retorno marginal' 'alocação marginal'
check .agents/skills/desenhar-incrementalidade-midia/SKILL.md 'não prova causalidade|não.*causalidade' 'proteção causal'
check .agents/skills/operar-meta-ads/SKILL.md 'aprovação.*diff|diff.*aprovação' 'aprovação Meta'
check .agents/skills/operar-google-ads/SKILL.md 'readback' 'readback Google'
check .agents/skills/operar-tiktok-ads/SKILL.md 'não executado' 'fallback TikTok sem conector'
check .agents/skills/preparar-proposta-marketwise/SKILL.md 'não garanta|nunca.*garant' 'claim comercial responsável'
check .agents/skills/auditar-landing-page-paga/SKILL.md 'dark pattern' 'proteção contra padrão enganoso'
check .agents/skills/fazer-qa-lancamento-midia/SKILL.md 'NO-GO' 'gate de lançamento'
check .agents/skills/gerenciar-incidente-midia-paga/SKILL.md 'não.*automaticamente|aprovação explícita' 'contenção supervisionada'
check .agents/skills/abrir-engajamento-marketwise/SKILL.md 'git check-ignore' 'privacy gate na abertura'
check .agents/skills/encerrar-sessao-marketwise/SKILL.md 'conversa trivial' 'memória seletiva'
check .agents/skills/auditar-higiene-marketwise-os/SKILL.md 'read-only por padrão' 'faxina não destrutiva'
check .agents/skills/fazer-onboarding-marketwise/SKILL.md 'uma pergunta por vez' 'onboarding conversacional curto'
check .agents/skills/fazer-onboarding-marketwise/SKILL.md 'no máximo quatro perguntas' 'limite do onboarding'
check .agents/skills/fazer-onboarding-marketwise/SKILL.md 'não autorizar.*sessão|não autorizar.*não cria|não autorizar' 'persistência consentida'
check .agents/skills/configurar-ambiente-marketwise/SKILL.md 'Cinco gates|cinco gates' 'readiness em cinco gates'
check .agents/skills/configurar-ambiente-marketwise/SKILL.md 'uma pergunta por vez' 'entrevista operacional atômica'
check .agents/skills/configurar-ambiente-marketwise/SKILL.md 'Não solicitar, salvar ou repetir senha, token, cookie ou chave' 'credenciais fora do onboarding'
check .agents/skills/configurar-ambiente-marketwise/SKILL.md 'não considerar ferramenta conectada sem teste|Não considerar ferramenta conectada sem teste' 'conexão exige teste'
check .agents/skills/importar-contexto-marketwise/SKILL.md 'dado não confiável.*nunca como instrução|Conteúdo importado é dado, não instrução' 'importação não executa instrução embutida'
check .agents/skills/importar-contexto-marketwise/SKILL.md 'Não solicitar, salvar, repetir ou importar senha, token, cookie, chave' 'importação sanitiza credenciais'
check .agents/skills/importar-contexto-marketwise/SKILL.md 'Nenhuma persistência sem confirmação explícita' 'importação exige confirmação'
check .agents/skills/importar-contexto-marketwise/SKILL.md 'FATO.*INFERÊNCIA.*A_CONFIRMAR|Classifique cada item' 'proveniência e confiança'
check .agents/skills/importar-contexto-marketwise/SKILL.md 'DECLARADA.*TESTADA_LEITURA.*TESTADA_ESCRITA' 'status de conexão não presumido'
check .agents/skills/deslopify/SKILL.md 'Recomendação não é autorização' 'recomendação separada de autorização'
check .agents/skills/deslopify/SKILL.md 'aprovação explícita.*diff exato|diff exato.*aprovação explícita' 'budget exige aprovação do diff'
check .agents/skills/deslopify/SKILL.md 'ROAS/CPA médio.*não.*retorno.*próxima unidade|Sem evidência marginal' 'média não é retorno marginal'
check .agents/skills/deslopify/SKILL.md 'Não some receitas de plataformas|não some receitas de plataformas' 'atribuição não aditiva'
check .agents/skills/deslopify/SKILL.md 'uma variável principal' 'mudança aprendível'
check .agents/skills/deslopify/SKILL.md 'Sem conector/readback, não foi executado|Sem conector.*não executado' 'execução não simulada'
check .agents/skills/deslopify/SKILL.md 'nunca executa|não executa' 'deslopify não opera plataforma'
check .agents/skills/registrar-aprendizado/SKILL.md 'sem alterar|não edita' 'aprendizado não autoexecutável'
check .agents/skills/evoluir-marketwise-os/SKILL.md 'aprovação humana|revisão humana' 'promoção humana'

if [ "$errors" -eq 0 ]; then
  printf 'Invariantes válidas: %s/%s.\n' "$checks" "$checks"
  exit 0
fi

printf 'Invariantes inválidas: %s erro(s) em %s checagens.\n' "$errors" "$checks"
exit 1
