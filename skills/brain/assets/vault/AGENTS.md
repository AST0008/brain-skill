# Brain

This folder is the second brain. Open it as an Obsidian vault and as the Cursor workspace. Treat it as the only place that counts as “what I know.”

## How to ask the brain

- “What am I focused on?” → read [[focus]], [[tasks]], [[waiting]]
- “What do I know about X?” → start at [[MOC]], follow wikilinks
- “What projects exist?” → [[entities]] then the project note
- “Research X” / “look this up” → web search. Label as web, not vault. Save only if asked (see [[protocol]])

If a note does not contain the answer, search the web, say it is not in the vault, and label the result as web. Do not fill the gap from model memory. Identity, focus, and “what do I know about me” stay vault-only: if those are missing, say **not in brain**.

## How to add a note

1. Copy a template from `00-system/templates/`.
2. Set `status` honestly (`fact` only if you wrote it or it is a verbatim cite).
3. Put it in the right folder (`04-knowledge/` evergreen, `05-learnings/` raw, `03-projects/` one card per project, `02-now/` live only).
4. Link it from [[MOC]] and [[entities]] if it should be findable.

## How to promote a learning

A dated capture in `05-learnings/` becomes a `04-knowledge/` note when it is a durable claim with a source. Leave the capture in place; link both ways.

## Retrieval rules (agents)

Follow [[protocol]] and `.cursor/rules/brain-retrieval.mdc`:

1. Read [[MOC]], then `02-now/`, then `01-identity/`. Follow links. Do not dump the vault.
2. Cite the file path for every claim.
3. If the vault lacks it, search the web and label the result as web. Say **not in brain** only for identity, focus, and “what do I know about me,” or when the search finds nothing.
4. Do not treat `inferred` or `stale` as current fact.
5. New agent text is `inferred` unless it is a verbatim cite.
6. Only [[tasks]] is the live task list.
7. Web search is automatic when the vault lacks the answer (see [[protocol]] Research). Never use it to invent facts about the human. Identity and now stay vault-only.

## Status meanings

`fact` · `inferred` · `stale` · `unknown` · `open` — defined in [[protocol]].
