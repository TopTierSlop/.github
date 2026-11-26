# Software factory config
Agents (OpenHands; Kimi leads, DeepSeek workers) coordinate via GitHub issues + PRs.
One team = one sandbox = 1 lead + ~3 workers, labeled `team:sde` or `team:ml`.

- `prompts/sde-lead.md` - SDE lead: split, assign, review, squash-merge, close.
- `prompts/ml-lead.md` - ML lead: same, with CPU/tiny-sample/seed/<10 MB rules.
- `prompts/worker.md` - worker: claim one sub-issue, branch, test, PR.
- `prompts/status-format.md` - strict status comment block; cap of 6 comments w/o progress.
- `.github/ISSUE_TEMPLATE/task.yml` - parent task form.
- `.github/ISSUE_TEMPLATE/agent-status.yml` - status fields form.
- `.github/ISSUE_TEMPLATE/config.yml` - disables blank issues.
- `.github/pull_request_template.md` - PR checklist.
- `scripts/setup-labels.sh` - `./scripts/setup-labels.sh org/repo` creates the labels.

Copy `.github/` into each repo in the org. Branches: `<issue#>-<short-slug>`.
