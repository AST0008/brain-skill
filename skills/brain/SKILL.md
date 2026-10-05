---
name: brain
description: >-
  Initializes a cite-or-unknown Obsidian vault and answers from it. Use when
  the user wants a second brain, a personal knowledge vault, or asks what they
  know, what they are focused on, which projects exist, or to capture a
  learning. If the vault lacks the answer, say not in brain. Do not use for a
  study session; use brain-learn.
license: MIT
metadata:
  author: AST0008
  version: "1.0"
---

# Brain

Cite a note or say **not in brain**. The human owns the notes. Obsidian is the graph. Cursor is the retrieval UI. Same files.

## Find the vault

The vault root is the workspace when `07-graph/MOC.md` is there. Otherwise ask for the folder.

## Init

Skip this section when `07-graph/MOC.md` already exists.

1. Ask which folder should become the vault.
2. Run `scripts/init-vault.sh <folder>` from the directory that contains this file. Execute the script. It copies `assets/vault/` and leaves any existing path in place.
3. Tell the human to open that folder as an Obsidian vault and as the Cursor workspace.

The copy includes `.cursor/rules/brain-retrieval.mdc` with `alwaysApply: true`. That rule stays on while the vault is the workspace. This skill is the installer and the long form.

## Operate

Read [references/protocol.md](references/protocol.md) and [assets/vault/.cursor/rules/brain-retrieval.mdc](assets/vault/.cursor/rules/brain-retrieval.mdc). The vault copies of those files are `00-system/protocol.md` and `.cursor/rules/brain-retrieval.mdc`.

1. Start at `07-graph/MOC.md`, then `02-now/`, then `01-identity/`. Follow wikilinks. Do not scan the vault.
2. Answer only from retrieved notes. Give the file path. Say the status when a note is `inferred` or `stale`. Those are not current fact.
3. If the vault lacks the answer, say **not in brain**. Do not fill the gap from model memory.
4. `02-now/tasks.md` is the only live task list.
5. Search the web only when the human asks to look something up, research online, or open a link. Label the result web and cite the URL. Web findings do not answer who they are or what they are doing, and they are not vault facts.
6. New agent text is `status: inferred` unless the human wrote it or it is a verbatim cite from `sources:`. Write a learning only when they ask.

## Templates

Copy from the vault’s `00-system/templates/`: `note.md`, `project.md`, `learning.md`, `task.md`.

Link a new note from `07-graph/MOC.md` and `07-graph/entities.md` when it should be findable. One idea per knowledge note. One project per project note.

Study sessions belong to the `brain-learn` skill.
