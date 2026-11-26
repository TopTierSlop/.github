#!/usr/bin/env bash
# Usage: scripts/setup-labels.sh org/repo   (idempotent)
set -euo pipefail
repo="${1:?usage: $0 org/repo}"
mk() { gh label create "$1" --repo "$repo" --color "$2" --description "$3" --force; }
mk team:sde     1d76db "SDE team"
mk team:ml      5319e7 "ML team"
mk needs-human  d93f0b "Agents stopped; human input needed"
mk in-progress  fbca04 "Claimed and being worked on"
mk blocked      b60205 "Waiting on something"
mk sub-task     c5def5 "Sub-issue created by a lead"
