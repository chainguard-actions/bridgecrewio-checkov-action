<!-- markdownlint-disable -->

# Hardening Report: bridgecrewio--checkov-action/v12.3135.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **bridgecrewio--checkov-action/v12.3135.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The docker action's runs.image uses a tag that can change, not a SHA digest: `image: 'docker://ghcr.io/bridgecrewio/checkov:3.3.30'`. Pin it to a digest, e.g. `docker://ghcr.io/bridgecrewio/checkov@sha256:<digest> # 3.3.30`.

Locations:

- `action.yml:157`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned runs.image to docker://ghcr.io/bridgecrewio/checkov:3.3.30@sha256:4b65e89f1fde292249fc0aa0d0db43302c036dfe39f7370b2d3517571082b894. Docker args left unchanged (not injectable).

