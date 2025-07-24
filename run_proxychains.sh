#!/data/data/com.termux/files/usr/bin/bash
echo '[*] Running TikTok Live through proxychains'
proxychains curl -s https://live.tiktok.com > /dev/null &
proxychains curl -s https://api.tiktokv.com > /dev/null &
