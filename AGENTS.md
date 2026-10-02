# AGENTS.md - device/mainline/common-ext

Agents must read this file before touching anything in this repository.

Part of the mainline repository set. Map of all repos: `vendor/mainline/docs/REPOSITORIES.md`.

External counterpart of `device/mainline/common`. It holds modules
maintained under their own rules. `mainline/common` includes it when
present and must keep working without it.

## How it plugs in

| Mechanism | Where |
|-----------|-------|
| Included at the end of the board config | `BoardConfigMainlineCommonExt.mk` |
| Inherited by the common product makefile | `mainline_common-ext.mk` |
| Extra defaults | `optional/options.mk`, section "Components" |
| Replace a common module | `optional/options.mk`, section "Replacements" |

A device opts in to the replacements with
`MAINLINE_COMMON_PREFER_EXT_MODULES := true`. The replacement value
gets an `_ext` suffix (`mainline` becomes `mainline_ext`), and the
module lives in `optional/<domain>-hal_<name>/`.

If the device prefers ext modules but this repository is missing, the
common tree prints a warning and keeps its own modules.

## Hard rules

- Do not build, flash or run tests; the human does.
- Do not search from the AOSP tree root.
- Shared standards are in `hardware/mainline/common/docs/`.
- Keep the same variable names and directory pattern as
  `device/mainline/common/optional/`; add every new variable to
  `optional/README.md`.
- Never make `device/mainline/common` depend on files here.
- For bringup of a device, read `device/mainline/common/docs/README.md`.
