<!-- markdownlint-disable -->

# Hardening Report: bridgecrewio--checkov-action/v12.1347.0

> This file was generated automatically by the hardening agent.

**Policy SHA:** `d636be7e43ef829af6e853da6b3c7566db9f72fe`

**Test Policy SHA:** `843adf9e4b8f85d0c08b27b9d0b09dd094b54702`

**Harden Agent Version:** `2`

Action **bridgecrewio--checkov-action/v12.1347.0** was hardened automatically. 2 finding(s) were identified and resolved across 1 iteration(s).

## Findings Fixed

### unpinned-uses (severity: high)

action.yml uses a Docker image referenced by mutable tag (`docker://bridgecrew/checkov:2.0.930`) instead of an immutable SHA digest. This means the image could be silently replaced with a different version. Additionally, .github/workflows/build.yml contains three unpinned `uses:` references: `actions/checkout@v2` (tag), `stefanzweifel/git-auto-commit-action@v4` (tag), and `anothrNick/github-tag-action@1.17.2` (version string). None of these are pinned to a full 40-character commit SHA.

Locations:

- `action.yml:57`
- `.github/workflows/build.yml:9`
- `.github/workflows/build.yml:16`
- `.github/workflows/build.yml:19`

### missing-permissions (severity: medium)

The workflow file .github/workflows/build.yml has no top-level `permissions:` key, and the only job (`update-checkov`) also has no job-level `permissions:` key. Without explicit permissions, the job inherits the default repository permissions, which may be overly broad (e.g., write access to contents). Minimal permissions should be declared explicitly.

Locations:

- `.github/workflows/build.yml:1`

## Iteration Notes

### Iteration 1

**Fixes applied:** unpinned-uses, missing-permissions

**Notes:**

Fixed four unpinned references: (1) action.yml line 57: pinned docker://bridgecrew/checkov:2.0.930 to @sha256:079148f3df7777a62f196f1ffdbaeca5b41a72a3a66412df1d4a5cecc6aaf08a while preserving the docker:// scheme and tag; (2) build.yml line 9: pinned actions/checkout@v2 to @0717577d45739eb3c851188b29f50ed6c0b2194e # v2; (3) build.yml line 16: pinned stefanzweifel/git-auto-commit-action@v4 to @3ea6ae190baf489ba007f7c92608f33ce20ef04a # v4; (4) build.yml line 19: pinned anothrNick/github-tag-action@1.17.2 to @31c05bec812d1a339edacdf9fbf5b068691a65b2 # 1.17.2. Also added top-level `permissions: contents: write` to build.yml, which is the minimum needed for the git-auto-commit-action and github-tag-action steps to push commits and tags.

