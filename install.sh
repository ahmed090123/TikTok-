#!/data/data/com.termux/files/usr/bin/bash
pkg update && pkg upgrade -y
pkg install -y python golang curl tsu dnsutils proxychains-ng
pip install pysocks asyncio rich
echo '[*] Installing gost...'
curl -Lo gost https://github.com/go-gost/gost/releases/download/v3.0.0/gost-linux-arm64
chmod +x gost && mv gost $PREFIX/bin/
echo 'Installation complete.'
