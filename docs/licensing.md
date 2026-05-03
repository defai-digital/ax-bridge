# Licensing

AX Bridge uses offline-first license verification.

Default license locations:

```text
~/.ax/bridge/license.lic
/etc/ax/bridge/license.lic
```

Feature tiers:

| Tier | Enabled Surface |
| --- | --- |
| Free trial | constrained binary execution and basic validation |
| Pro | L3 local validated execution |
| Enterprise | L4-L5 validation, policy, audit export, offline activation, support |

AX Code does not verify AX Bridge license files directly. It invokes `ax-bridge --json license status` and renders the returned status.
