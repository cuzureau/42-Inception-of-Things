echo "[$(hostname)] Installing K3S on agent."

# telechargement et installation de K3s
curl -sfL https://get.k3s.io |
sh -s - agent \
    --node-ip $AGENT_IP \
    --server "https://$SERVER_IP:6443" \
    --token-file $PATH_SHARED_FOLDER/token

echo "[$(hostname)] Configured succesfully"
