#!/bin/sh
set -eu

repo="defai-digital/ax-bridge"
version="${AX_BRIDGE_VERSION:-latest}"
install_dir="${AX_BRIDGE_INSTALL_DIR:-$HOME/.local/bin}"

platform="$(uname -s)"
arch="$(uname -m)"

case "$platform:$arch" in
  Darwin:arm64)
    asset="ax-bridge-macos-arm64.tar.gz"
    ;;
  Linux:x86_64)
    asset="ax-bridge-linux-x64.tar.gz"
    ;;
  Linux:aarch64|Linux:arm64)
    asset="ax-bridge-linux-arm64.tar.gz"
    ;;
  *)
    echo "unsupported platform: $platform $arch" >&2
    exit 1
    ;;
esac

base_url="https://github.com/$repo/releases"
if [ "$version" = "latest" ]; then
  download_url="$base_url/latest/download/$asset"
  sums_url="$base_url/latest/download/SHA256SUMS"
else
  download_url="$base_url/download/$version/$asset"
  sums_url="$base_url/download/$version/SHA256SUMS"
fi

tmp_dir="$(mktemp -d)"
trap 'rm -rf "$tmp_dir"' EXIT

curl -fsSL "$download_url" -o "$tmp_dir/$asset"
curl -fsSL "$sums_url" -o "$tmp_dir/SHA256SUMS"

(cd "$tmp_dir" && shasum -a 256 -c SHA256SUMS)

mkdir -p "$install_dir"
tar -xzf "$tmp_dir/$asset" -C "$tmp_dir"
mv "$tmp_dir/ax-bridge" "$install_dir/ax-bridge"
chmod 755 "$install_dir/ax-bridge"

echo "installed ax-bridge to $install_dir/ax-bridge"
echo "run: ax-bridge --json license status"
