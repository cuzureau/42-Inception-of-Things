echo "[$(hostname)] Installing K3S on agent."

# telechargement et installation de K3s
curl -sfL https://get.k3s.io |
sh -s - agent \
    --node-ip $AGENT_IP \
    --server "https://$SERVER_IP:6443" \
    --token-file /$SYNCED_FOLDER/node-token

echo "[$(hostname)] Configured succesfully"
