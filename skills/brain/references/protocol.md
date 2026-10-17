---
type: system
status: fact
updated: 2026-10-17
sources: []
related: ["[[MOC]]"]
---

# Brain protocol

This vault is the source of truth. Obsidian is the graph UI. Cursor is the retrieval UI. Same files.

## Frontmatter

Every note uses this block:

```yaml
---
type: knowledge | project | task | identity | learning | source | system
status: fact | inferred | stale | unknown | open
updated: YYYY-MM-DD
sources:
  - path-or-url
related: []
---
```

| Status | Meaning |
| --- | --- |
| `fact` | Written or confirmed by you, or copied from a cited file |
| `inferred` | Agent-written guess. Must stay labelled. Never treat as current fact |
| `stale` | True once, not current |
| `unknown` | We do not know. Leave the slot empty |
| `open` | A task or question still in play |

## Write

1. One idea per knowledge note. One project per project note. Do not clone repos into the vault.
2. Cite a source path when the claim did not originate in this file.
3. New agent-written notes start as `status: inferred` unless they are a verbatim cite from a listed source.
4. Capture raw thoughts in [[inbox]]. Promote a learning into `04-knowledge/` only after it is a durable claim with a source.
5. Live work lives only in `02-now/`. Historical checklists go to `06-sources/` or stay `stale`.
6. Link with Obsidian wikilinks. The wikilink graph is the knowledge graph.
7. Prefer leaving a field `unknown` over guessing.

## Read (agents)

1. Start at [[MOC]], then `02-now/`, then `01-identity/`. Follow links. Do not scan the whole vault by default.
2. Answer only from retrieved notes. Quote or paraphrase and give the file path.
3. If the vault does not contain it, search the web. Say it is not in the vault, label the answer as web, and cite URLs. Do not complete from model memory.
4. Never promote `inferred` or `stale` to current fact.
5. `02-now/tasks.md` is the only live task list.

## Research (web)

Cursor can search the open web. That is not the vault.

1. If the vault lacks the answer, search the web automatically. Also search when the human asks to look something up, research online, or open a link.
2. Do not use the web to answer “what do I know / am I doing / who am I.” Those stay vault-only. If missing, say **not in brain**.
3. Label web findings as web and cite URLs. They are not vault facts.
4. Do not write web findings into `04-knowledge/` or treat them as `fact`. To keep them, write a `05-learnings/` capture (`inferred`, `sources:` URLs) and link from [[inbox]] only if the human asks to save.
5. Never use the web to invent facts about the human.

## Templates

Copy from `00-system/templates/`: `note.md`, `project.md`, `learning.md`, `task.md`.
