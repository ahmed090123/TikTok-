#!/data/data/com.termux/files/usr/bin/bash
bash Optim/dns/switch_dns.sh &
python Optim/tunnel/start_tunnel.py &
bash Optim/net/run_proxychains.sh &
echo 'TikTok Optimizer running...'
