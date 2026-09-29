#!/usr/bin/env python3
"""Validador local de estrutura e metadata das skills do MarketwiseOS."""

from __future__ import annotations

import re
import sys
from pathlib import Path

import yaml


def fail(message: str) -> None:
    print(message, file=sys.stderr)
    raise SystemExit(1)


def load_yaml(path: Path) -> dict:
    try:
        value = yaml.safe_load(path.read_text(encoding="utf-8"))
    except Exception as exc:  # pragma: no cover - mensagem operacional
        fail(f"YAML inválido em {path}: {exc}")
    if not isinstance(value, dict):
        fail(f"YAML deve ser um mapa em {path}")
    return value


def main() -> None:
    if len(sys.argv) != 2:
        fail("uso: validar-skill.py <diretório-da-skill>")

    root = Path(sys.argv[1])
    skill_file = root / "SKILL.md"
    metadata_file = root / "agents" / "openai.yaml"
    if not skill_file.is_file() or not metadata_file.is_file():
        fail(f"arquivos obrigatórios ausentes em {root}")

    text = skill_file.read_text(encoding="utf-8")
    match = re.match(r"\A---\s*\n(.*?)\n---\s*\n(.*)\Z", text, re.DOTALL)
    if not match:
        fail(f"frontmatter inválido em {skill_file}")
    frontmatter = yaml.safe_load(match.group(1))
    if not isinstance(frontmatter, dict):
        fail(f"frontmatter deve ser um mapa em {skill_file}")

    name = frontmatter.get("name")
    description = frontmatter.get("description")
    if name != root.name:
        fail(f"name '{name}' não coincide com pasta '{root.name}'")
    if not isinstance(name, str) or not re.fullmatch(r"[a-z0-9]+(?:-[a-z0-9]+)*", name):
        fail(f"name fora do padrão em {skill_file}")
    if len(name) > 64:
        fail(f"name excede 64 caracteres em {skill_file}")
    if not isinstance(description, str) or not description.strip() or len(description) > 1024:
        fail(f"description ausente ou longa demais em {skill_file}")
    if not match.group(2).strip():
        fail(f"corpo vazio em {skill_file}")

    metadata = load_yaml(metadata_file)
    interface = metadata.get("interface")
    if not isinstance(interface, dict):
        fail(f"interface ausente em {metadata_file}")
    for key in ("display_name", "short_description", "default_prompt"):
        if not isinstance(interface.get(key), str) or not interface[key].strip():
            fail(f"interface.{key} ausente em {metadata_file}")
    short = interface["short_description"]
    if not 25 <= len(short) <= 64:
        fail(f"short_description deve ter 25–64 caracteres em {metadata_file}")
    if f"${name}" not in interface["default_prompt"]:
        fail(f"default_prompt deve mencionar ${name} em {metadata_file}")

    for reference in re.findall(r"(?<![\w/])((?:references|assets)/[A-Za-z0-9._/-]+)", text):
        if not (root / reference).exists():
            fail(f"referência inexistente em {skill_file}: {reference}")

    for link in re.findall(r"\]\(([^)]+)\)", text):
        target = link.split("#", 1)[0]
        if not target or re.match(r"[a-z]+://", target):
            continue
        if not (root / target).exists():
            fail(f"link local inexistente em {skill_file}: {target}")

    for folder_name in ("references", "assets"):
        folder = root / folder_name
        if not folder.is_dir():
            continue
        for resource in folder.rglob("*"):
            if resource.is_file():
                relative = resource.relative_to(root).as_posix()
                if relative not in text:
                    fail(f"recurso não roteado pelo SKILL.md: {relative}")

    print(f"ok: {name}")


if __name__ == "__main__":
    main()
