<!-- markdownlint-disable -->

# Hardening Report: bridgecrewio--checkov-action/v12.1347.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `1`

Action **bridgecrewio--checkov-action/v12.1347.0** was hardened automatically. 1 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

The Docker action references a mutable image tag instead of an immutable SHA digest. `image: 'docker://bridgecrew/checkov:2.0.930'` uses the version tag `2.0.930`, which can be overwritten by the image registry at any time, exposing the action to supply-chain attacks. It should be pinned to a SHA digest, e.g. `docker://bridgecrew/checkov@sha256:<64-hex-char-digest>`.

Locations:

- `action.yml:68`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses

**Notes:**

Pinned the Docker image reference in action.yml from the mutable tag `docker://bridgecrew/checkov:2.0.930` to the immutable digest `docker://bridgecrew/checkov@sha256:079148f3df7777a62f196f1ffdbaeca5b41a72a3a66412df1d4a5cecc6aaf08a` with the original tag preserved as a comment (`# 2.0.930`).

