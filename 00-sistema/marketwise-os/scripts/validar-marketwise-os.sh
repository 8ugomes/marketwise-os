#!/usr/bin/env bash
set -u

cd "$(dirname "$0")/../../.." || exit 1
errors=0
warnings=0

fail() { printf 'ERRO: %s\n' "$1"; errors=$((errors + 1)); }
warn() { printf 'AVISO: %s\n' "$1"; warnings=$((warnings + 1)); }

required_skills="consulting fazer-onboarding-marketwise importar-contexto-marketwise configurar-ambiente-marketwise prospectar-varejo-b2b qualificar-oportunidade-b2b preparar-proposta-marketwise conduzir-qbr-growth diagnosticar-crescimento-e-midia alocar-investimento-midia desenhar-incrementalidade-midia planejar-midia-paga otimizar-midia-paga reportar-midia-paga auditar-catalogo-commerce auditar-mensuracao-commerce monitorar-pacing-midia planejar-criativos-performance auditar-landing-page-paga fazer-qa-lancamento-midia gerenciar-incidente-midia-paga operar-meta-ads operar-google-ads operar-tiktok-ads abrir-engajamento-marketwise encerrar-sessao-marketwise auditar-higiene-marketwise-os registrar-aprendizado evoluir-marketwise-os"

for skill in $required_skills; do
  file=".agents/skills/$skill/SKILL.md"
  [ -f "$file" ] || { fail "skill ausente: $skill"; continue; }
  grep -q "^name: $skill$" "$file" || fail "name não coincide com a pasta: $skill"
  grep -q '^description:' "$file" || fail "description ausente: $skill"
  [ -f ".agents/skills/$skill/agents/openai.yaml" ] || fail "agents/openai.yaml ausente: $skill"
  grep -Eq "^## ${skill}( —.*)?$" 00-sistema/marketwise-os/evals/casos.md || fail "casos de avaliação ausentes: $skill"
  grep -q '\[TODO' "$file" && fail "placeholder TODO em $file"
  grep -q 'NOT CONFIGURED' "$file" && fail "placeholder de setup em $file"

  while IFS= read -r ref; do
    target=".agents/skills/$skill/$ref"
    [ -e "$target" ] || fail "referência inexistente em $file: $ref"
  done < <(grep -oE '\((references|assets)/[^)]+\)' "$file" | tr -d '()' | sort -u)
done

for skill_dir in .agents/skills/*; do
  [ -d "$skill_dir" ] || continue
  skill_name=$(basename "$skill_dir")
  case " $required_skills " in
    *" $skill_name "*) ;;
    *) fail "skill fora do catálogo obrigatório: $skill_name" ;;
  esac
done

[ "$(tr -d '[:space:]' < CLAUDE.md 2>/dev/null)" = '@AGENTS.md' ] || fail 'CLAUDE.md deve apontar apenas para @AGENTS.md'
grep -q '\.agents/skills/' AGENTS.md || fail 'AGENTS.md não aponta para .agents/skills/'

for private_path in 01-empresa/perfil-empresa.md 02-engajamentos/cliente-exemplo/contexto.md 04-base-conhecimento/aprendizados.md; do
  git check-ignore -q "$private_path" || fail "caminho privado não está ignorado: $private_path"
done

private_exposed=$(git status --short | cut -c4- | grep -E '^(01-empresa|02-engajamentos|04-base-conhecimento)/' | grep -vE '^(01-empresa|04-base-conhecimento)/_modelos/|^02-engajamentos/_modelo-engajamento/' || true)
[ -z "$private_exposed" ] || fail "git status expõe arquivo privado: $private_exposed"

[ -f 00-sistema/marketwise-os/RELEASE.md ] || fail 'RELEASE.md ausente'
[ -f 00-sistema/marketwise-os/evals/casos.md ] || fail 'suite de casos ausente'

bash 00-sistema/marketwise-os/scripts/testar-invariantes.sh >/dev/null 2>&1 || fail 'teste de invariantes falhou'

validator_python=${MARKETWISE_SKILL_PYTHON:-python3}
if "$validator_python" -c 'import yaml' >/dev/null 2>&1; then
  for skill in $required_skills; do
    "$validator_python" 00-sistema/marketwise-os/scripts/validar-skill.py ".agents/skills/$skill" >/dev/null 2>&1 || fail "validação YAML falhou: $skill"
  done
else
  warn 'PyYAML não disponível; validação básica concluída, validar-skill.py não executado'
fi

if [ "$errors" -eq 0 ]; then
  printf 'MarketwiseOS válido: %s aviso(s).\n' "$warnings"
  exit 0
fi

printf 'MarketwiseOS inválido: %s erro(s), %s aviso(s).\n' "$errors" "$warnings"
exit 1
