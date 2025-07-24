#!/data/data/com.termux/files/usr/bin/bash
dns_list=("1.1.1.1" "8.8.8.8" "45.90.28.0")
best_dns=""; lowest=9999
for dns in "${dns_list[@]}"; do
  ping_result=$(ping -c 1 $dns | grep 'time=' | awk -F'time=' '{print $2}' | cut -d' ' -f1)
  if [[ $ping_result ]]; then
    if (( $(echo "$ping_result < $lowest" | bc -l) )); then
      lowest=$ping_result; best_dns=$dns
    fi
  fi
done
echo "nameserver $best_dns" > $PREFIX/etc/resolv.conf
echo "[*] DNS switched to $best_dns"
