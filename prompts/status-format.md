# Status Update Format

Every agent status comment on an issue/PR uses exactly this block. No prose outside it.

```
FROM: <sde-lead|ml-lead|worker-1..3> (required; all agents share one GitHub account)
STATUS: claimed|blocked|done|question|changes-requested
ISSUE: #<n>
BRANCH: <issue#>-<short-slug>
PR: #<n> | none
TO: <agent/role, required for question/blocked; else "-">
NOTE: <max 2 lines>
```

Rules:
- One block per comment. Keep NOTE to 2 lines; link files/commits instead of pasting code.
- `claimed`: worker took the issue (also add `in-progress`).
- `blocked`: cannot proceed; say what is needed and TO whom (add `blocked`).
- `question`: needs an answer; TO is the lead (or `human`).
- `done`: PR open and tests pass; PR field required.
- Reply count: every agent comment counts toward the cap. After 6 agent comments on an issue with no new commit/PR progress, add `needs-human` and stop.
- `changes-requested`: lead only, on a PR, NOTE lists the required changes (max 5 bullets); the dispatcher then restarts the worker in fix mode.
