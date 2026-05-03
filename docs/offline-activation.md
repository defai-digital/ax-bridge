# Offline Activation

Offline activation uses a signed license file.

Expected flow:

```text
receive license.lic
  -> place file in ~/.ax/bridge/license.lic
  -> run ax-bridge --json license status
  -> AX Code detects enabled features
```

Do not commit license files, signing keys, activation bundles, or customer-specific metadata to this repository.
