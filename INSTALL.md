# Install AX Bridge

## macOS Apple Silicon

```bash
curl -LO https://github.com/defai-digital/ax-bridge/releases/latest/download/ax-bridge-macos-arm64.tar.gz
curl -LO https://github.com/defai-digital/ax-bridge/releases/latest/download/SHA256SUMS
shasum -a 256 -c SHA256SUMS
tar -xzf ax-bridge-macos-arm64.tar.gz
mkdir -p ~/.local/bin
mv ax-bridge ~/.local/bin/
```

## Linux

Use the release asset matching your host:

```text
ax-bridge-linux-x64.tar.gz
ax-bridge-linux-arm64.tar.gz
```

## License

Place your offline license file at:

```text
~/.ax/bridge/license.lic
```

Then run:

```bash
ax-bridge --json license status
```
