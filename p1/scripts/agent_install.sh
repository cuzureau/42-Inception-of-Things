source ../confs/env.sh

# telechargement et installation de K3s
curl -sfL https://get.k3s.io |
sh -s - agent \
    --node-ip $AGENT_IP \
    --flannel-iface=eth1 \
    --server "https://$SERVER_IP:6443" \
    --token-file $PATH_SHARED_FOLDER/node-token
