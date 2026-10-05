# Brain

A cite-or-unknown second brain for [Obsidian](https://obsidian.md) and any agent that reads [Agent Skills](https://agentskills.io). The human writes the notes. The agent starts at the map of content, cites a file, and says **not in brain** when the vault is silent.

[NicholasSpisak/second-brain](https://github.com/NicholasSpisak/second-brain) has the model compile a wiki from a raw inbox. This package keeps authorship with the human: web lookup is opt-in, and it never answers who you are or what you are doing.

## Install

```bash
npx skills add AST0008/brain-skill
```

| Skill | What it does |
| --- | --- |
| `brain` | Create an empty vault, then answer only from its notes |
| `brain-learn` | Study one live check from `02-now/tasks.md` |

## Quick start

1. Install the skills (above).
2. Ask the agent to set up a brain. It copies an empty vault into a folder you choose and leaves any file that is already there.
3. Open that folder as an Obsidian vault and as the Cursor workspace.
4. Write `02-now/focus.md` and `02-now/tasks.md`. Until you do, “what am I focused on?” is **not in brain**.

## What you get

```
your-vault/
├── AGENTS.md
├── 00-system/
│   ├── protocol.md
│   └── templates/
├── 01-identity/          # me, stack — empty
├── 02-now/               # focus, tasks, waiting — empty
├── 03-projects/
├── 04-knowledge/
├── 05-learnings/inbox.md
├── 06-sources/
├── 07-graph/             # MOC and entities, no topics yet
└── .cursor/rules/brain-retrieval.mdc
```

`brain-retrieval.mdc` is `alwaysApply` inside the vault, so retrieval stays on while that folder is the workspace. `brain` is the installer and the long form of the same rules.

## Status

`fact` · `inferred` · `stale` · `unknown` · `open` — defined in the vault’s `00-system/protocol.md`. Agent-written notes start as `inferred`.

## License

[MIT](LICENSE)
