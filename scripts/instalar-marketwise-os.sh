#!/usr/bin/env bash
set -eu

repo_root=$(CDPATH= cd -- "$(dirname "$0")/.." && pwd)
cd "$repo_root"

mkdir -p 01-empresa 02-engajamentos 04-base-conhecimento/execucoes-skills \
  04-base-conhecimento/melhorias-skills

copy_if_missing() {
  source_file=$1
  target_file=$2
  if [ ! -e "$target_file" ]; then
    cp "$source_file" "$target_file"
    printf 'Criado: %s\n' "$target_file"
  else
    printf 'Preservado: %s\n' "$target_file"
  fi
}

copy_if_missing 01-empresa/_modelos/perfil-marketwise-base.md 01-empresa/perfil-empresa.md
copy_if_missing 01-empresa/_modelos/kpis-marketwise-base.md 01-empresa/kpis.md
copy_if_missing 01-empresa/_modelos/papeis-e-jornadas.md 01-empresa/papeis-e-jornadas.md
copy_if_missing 01-empresa/_modelos/ofertas.md 01-empresa/ofertas.md

bash scripts/validar-instalacao.sh

printf '\nMarketwiseOS instalado.\n'
printf 'Próximo prompt: inicie meu onboarding.\n'
