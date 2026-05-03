# AX Bridge

AX Bridge is a deterministic, policy-controlled, auditable agent execution engine for AX Code.

This public repository is the release and documentation channel for the commercial AX Bridge binary. It does not contain AX Bridge source code.

## Install

Download binaries from GitHub Releases.

For macOS Apple Silicon, you can use:

```bash
curl -fsSL https://raw.githubusercontent.com/defai-digital/ax-bridge/main/scripts/install.sh | sh
```

Then check:

```bash
ax-bridge --json doctor
ax-bridge --json license status
```

## Repository Model

```text
defai-digital/ax-bridge    public docs and binary releases
automatosx/ax-bridge       private source, CI, tests, license logic
ax-code                    MIT host integration
```

AX Code detects and invokes the `ax-bridge` binary. Advanced validation, policy, audit, and enterprise deployment features require an AX Bridge license.

## Release Assets

GitHub Releases may include:

```text
ax-bridge-macos-arm64.tar.gz
ax-bridge-windows-x64.zip
ax-bridge-windows-arm64.zip
SHA256SUMS
SBOM.cargo-metadata.json
```

## License

AX Bridge is commercial software. See `EULA.md` and `LICENSE.txt`.
