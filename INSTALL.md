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

## Windows x64

Download:

```text
https://github.com/defai-digital/ax-bridge/releases/latest/download/ax-bridge-windows-x64.zip
https://github.com/defai-digital/ax-bridge/releases/latest/download/SHA256SUMS
```

Unzip `ax-bridge-windows-x64.zip`, place `ax-bridge.exe` somewhere on `PATH`, then run:

```powershell
ax-bridge.exe --json doctor
ax-bridge.exe --json license status
```

## Windows ARM64

Download:

```text
https://github.com/defai-digital/ax-bridge/releases/latest/download/ax-bridge-windows-arm64.zip
https://github.com/defai-digital/ax-bridge/releases/latest/download/SHA256SUMS
```

Unzip `ax-bridge-windows-arm64.zip`, place `ax-bridge.exe` somewhere on `PATH`, then run:

```powershell
ax-bridge.exe --json doctor
ax-bridge.exe --json license status
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
