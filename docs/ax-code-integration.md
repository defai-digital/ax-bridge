# AX Code Integration

AX Code remains the MIT host and entry point.

AX Code should:

- detect the `ax-bridge` binary
- invoke `ax-bridge` with `--json`
- render bridge status and license state
- fall back to basic mode only for non-premium operations

AX Code should not:

- embed AX Bridge source
- implement AX Bridge license verification
- claim L3+ validation, policy, or audit when the licensed binary is absent

Recommended checks:

```bash
ax-bridge --json doctor
ax-bridge --json license status
```
