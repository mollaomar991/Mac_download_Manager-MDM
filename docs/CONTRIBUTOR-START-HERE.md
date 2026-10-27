# Contributor start here

MDM (Mac Download Manager) is an early macOS preview. Downloads and Chrome/Edge/Brave/Safari
integration exist, but reliability, sustained speed and user experience still
need work. Firefox and playlist support are approved development goals, not released capabilities.

## Our strategy

Keep working downloads reliable while adding capabilities in small, reviewed
steps. Measure speed improvements and verify completed files.
Each change should leave the existing macOS application usable.

## Pick your first task

1. Read the relevant goal and its acceptance criteria in the
   [issue backlog](https://github.com/mollaomar991/Mac_download_Manager-MDM/issues).
2. Choose a concrete implementation step. Check its prerequisites, existing PRs
   and comments so you do not duplicate another contributor's work.
3. Comment with the step you want to take, your approach, and how you will test
   it. State which operating systems/devices you can actually test.
4. Wait for maintainer agreement on scope and ownership before starting new
   feature implementation. A comment alone does not reserve the task.
5. Submit a focused PR with test evidence. If a prerequisite is unfinished, you
   may discuss or share a draft, but do not merge ahead of the dependency.

Small bug reports, documentation corrections and regression tests are welcome.
If an issue has no status label, read its discussion and ask for scope/readiness
agreement; missing labels do not mean it is automatically ready or blocked.

## What the labels mean

| Label | Meaning | What to do |
| --- | --- | --- |
| `type: goal` | A larger outcome delivered through several steps | Read it for context; choose a linked implementation issue |
| `status: ready` | No unfinished implementation prerequisite is recorded | Propose your approach and agree ownership |
| `status: blocked` | A named prerequisite must merge and pass validation first | Follow that dependency; planning is welcome |
| `help wanted` | Contributions are welcome | Still check readiness and discuss scope |
| `bug` / `enhancement` / `documentation` | The kind of work | These do not indicate priority or merge approval |
| `good first issue` | A deliberately scoped newcomer task, when applied | Read its acceptance criteria before claiming it |

Labels are maintained manually. They are not automated merge gates and may lag
behind discussions. If a label and dependency disagree, ask the maintainer to
reconcile them. Issue numbers and step numbers describe identity/order, not
priority. `help wanted` plus `status: blocked` means help is welcome once the
prerequisite is ready.

## How the goals fit together

| Goal | Implementation order |
| --- | --- |
| [Firefox support](https://github.com/mollaomar991/Mac_download_Manager-MDM/issues) | Capture/integration → persistent installation/setup |
| [YouTube playlists](https://github.com/mollaomar991/Mac_download_Manager-MDM/issues) | Discovery/model → selection/queue/batch controls |
| [Apple Silicon (arm64)](https://github.com/mollaomar991/Mac_download_Manager-MDM/issues) | Build validation → packaging → hardware validation |

Reliability work can proceed alongside these goals: measured throughput,
CI/regression coverage, interrupted-transfer recovery, safe handoff,
extension behavior, and desktop interactions.

## Link a PR correctly

For a PR that fully completes a task, use:

```text
Closes #<issue-number>
Refs #<goal-issue>
```

Use `Refs #N` instead if the PR only delivers part of that step. One issue may need several small PRs;
several unrelated issues should not become one large PR.

After merge, the maintainer checks the evidence, updates the goal checklist,
and changes the next step from blocked to ready. A goal closes only when all
acceptance criteria are met. Publishing installers is a separate maintainer
release decision.

## Evidence and review

- Add regression coverage for behavior you change and explain what you tested.
- Distinguish fixtures, live-browser testing and real-device testing. A passing
  build does not establish support for an operating system or architecture.
- Preserve transfer integrity, audio/video pairing, cancellation, credential
  boundaries and existing macOS behavior.
- Keep credentials, signed media URLs and browser profiles out of public reports.
- Keep unrelated refactors and dependency upgrades out of focused feature PRs.
- Contributor code must not receive release secrets.

See [CONTRIBUTING.md](../CONTRIBUTING.md) for development commands,
[SECURITY.md](../SECURITY.md) for private vulnerability reports, and
[release requirements](RELEASING.md) for distribution checks.
