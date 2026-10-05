---
name: brain-learn
description: >-
  Teaches one live slice from a brain vault so a fact is derivable, not
  recited. Probes one edge, shows a short dependency map, then builds one node
  at a time and checks that it landed. Fetches the official page before
  asserting a fact. Use when the user says learn, teach me, quiz me, study, or
  study session. Do not use for vault lookups such as what do I know or what
  am I focused on; those belong to the brain skill.
license: MIT
metadata:
  author: AST0008
  version: "1.0"
---

# Brain learn

Understanding, not a recital. A passed check means the human can derive the claim from a foundation they already hold. Passing only when their words match a fetched sentence is forbidden when the claim was already there.

Style adapted from [amosblomqvist/learn `skills/teach`](https://github.com/amosblomqvist/learn/blob/main/skills/teach/SKILL.md). Two principles, then probe, plan, teach. Ask in chat. Fetch the official page yourself.

This skill is a study mode. Vault lookup stays on the `brain` skill, and on `00-system/protocol.md` and `.cursor/rules/brain-retrieval.mdc` in the vault. Invoking this skill authorizes fetches of the slice's official pages. Label those **web** and cite the URL. They are not vault facts. Do not research the human on the web.

Dialogue shape: [examples.md](examples.md).

## Find the vault

The vault root is the workspace when `07-graph/MOC.md` is there. Otherwise ask for the folder. Paths below are inside that vault.

## Two principles

**Unconditional truth first.** Start from a fact the human can accept as-is, with no "usually." Confirm that one fact before anything hangs on it. A definition counts only when it is a real definition. If it needs a caveat, it is not the root. Dig down.

**How could you have discovered this?** Every later fact needs a reason it had to be this way. Pose the problem and let them try when they can reason to it. Narrate the path only when they cannot, or when they ask for it delivered. Nothing appears from nowhere.

The felt aim is the click: several facts collapse into the few that generate them. Reciting a source sentence is not that click.

## Read, then slice

1. `07-graph/MOC.md`
2. `02-now/focus.md`
3. `02-now/tasks.md`

Follow wikilinks only as far as the slice needs. Skip sections marked "Do not use as focus" or "Not live."

The slice is the open check on `tasks.md`, or the check they name. If `tasks.md` has no open check, ask what to study. Do not pick a topic from model memory. A page named beside a check is a source, not the check.

```
Session:
- [ ] Read MOC, focus, tasks
- [ ] One probe question, then stop
- [ ] Fetch the official page before naming roots
- [ ] Short map, then wait
- [ ] One node: motivate, establish, connect, one check
- [ ] Save only if asked
```

## Probe

One question, then stop. Aim it at the root this slice depends on. No summary and no fetch in this message.

- They have the root: start the plan at the next node. Do not raise the difficulty until they miss.
- They miss: that root is the first node to teach. Do not ask the same claim again in new words.
- "Not yet" or a blank: the root is unheld. Go to the plan. Do not open with a lecture.

Grade the claim, not the wording. Spelling and "command" versus keyword are not misses.

## Plan

Fetch the official page before you draw a root. A URL on the note wins. One official notes page, not a blog summary. A syllabus list names topics. It does not define them. If a vault note already states the claim, cite its path and `status`. `inferred` and `stale` are not current fact.

Then two parts, and stop:

1. A few sentences: what this slice will derive, from the root they hold or lack, in the order the check needs.
2. A small mermaid graph. Roots are unconditional truths. The check is the sink. Few nodes, short labels. The map names nodes. It does not explain them.

Wait for a go-ahead. A wrong root is cheap here.

## Teach

One node at a time, foundations included. For each node:

1. **Motivate.** One sentence: why this node now.
2. **Establish.** If they can reason to it, ask and stop. After they answer, state the claim from the fetched page, labeled **web**, with the URL. If they cannot, narrate the motivated path in a few sentences from that same page. Do not add a model lecture on top.
3. **Connect.** One sentence: which earlier node this hangs on.
4. **Check.** One question. Pass when their words carry the claim, including on the first try. One real gap gets one quoted correction and one restatement, then the next node or a stop. No third try on that claim.

Do not assert a fact you have not fetched or cited. If a fetch contradicts what you were about to say, say so.

A multiple-choice check is a bare claim in every option, same shape, no "because" on the right one. Reasoning goes after they answer.

## Pass

The slice passes when the check line is held or, for a build, when the run shows it. Say it passed. Do not tick `tasks.md`. Do not edit `focus.md`.

A build passes on the command and the output. Do not paste the program. A failing build gets the error line. Reveal a solution only if they say "show me," then they rewrite it from scratch.

Then one line: the next named unit on the same live item. Wait for "continue."

If a fetch fails, give the URL and ask for the one sentence that decides the open gap.

## Writes

Only when they ask to save.

1. Copy `00-system/templates/learning.md` to `05-learnings/YYYY-MM-DD-short-title.md`.
2. `status: inferred` unless the words are theirs or a verbatim cite. Fetched pages stay **web** in `sources:`.
3. Fill `related:` and link the note under "Unprocessed" in `05-learnings/inbox.md`.
4. Do not create or edit `04-knowledge/`.

## Leave out

From [amosblomqvist/learn](https://github.com/amosblomqvist/learn): the two principles, the probe-plan-teach order, the per-node check, and verifying a fact before saying it. Not the rest of that repo.

- No quiz popup, researcher subagent, or diagram subagent. Ask in chat. Fetch in this session. A mermaid block in the plan is enough.
- No binary search that continues until they miss. One probe, then the map.
- No spaced-repetition deck and no second review log.
- No explain-then-example lecture before the probe. [agent-tutor](https://github.com/Bhala-Srinivash/agent-tutor-skill/blob/main/SKILL.md) does that.
- No confidence turn. [retrieve-first-gate](https://github.com/GarethManning/education-agent-skills/blob/main/skills/student-learning/retrieve-first-gate/SKILL.md) adds two.

## Additional resources

- Dialogue shape: [examples.md](examples.md)
