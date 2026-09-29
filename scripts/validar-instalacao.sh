#!/usr/bin/env bash
set -u

repo_root=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
cd "$repo_root" || exit 1
errors=0

fail() {
  printf 'ERRO: %s\n' "$1"
  errors=$((errors + 1))
}

for file in AGENTS.md CLAUDE.md README.md .github/copilot-instructions.md; do
  [ -f "$file" ] || fail "arquivo de compatibilidade ausente: $file"
done

bash 00-sistema/marketwise-os/scripts/validar-marketwise-os.sh || errors=$((errors + 1))
bash 00-sistema/marketwise-os/scripts/testar-invariantes.sh || errors=$((errors + 1))

agent_count=$(find .agents/skills -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')
claude_count=$(find .claude/skills -mindepth 1 -maxdepth 1 -type d | wc -l | tr -d ' ')
[ "$agent_count" = "29" ] || fail "esperadas 29 skills em .agents; encontradas $agent_count"
[ "$claude_count" = "29" ] || fail "esperadas 29 skills em .claude; encontradas $claude_count"

diff -qr .agents/skills .claude/skills >/dev/null 2>&1 || fail 'cópias de skills divergentes'

grep -Fq 'rg --files --hidden --no-ignore' AGENTS.md \
  || fail 'regra de descoberta de contexto privado ausente'

tracked_private=$(git ls-files '01-empresa/**' '02-engajamentos/**' '04-base-conhecimento/**' 2>/dev/null \
  | grep -vE '^01-empresa/_modelos/|^02-engajamentos/_modelo-engajamento/|^04-base-conhecimento/_modelos/' || true)
[ -z "$tracked_private" ] || fail "conteúdo privado versionado: $tracked_private"

if [ "$errors" -eq 0 ]; then
  printf 'Instalação válida: 29 skills, compatibilidade e privacidade aprovadas.\n'
  exit 0
fi

printf 'Instalação inválida: %s erro(s).\n' "$errors"
exit 1
