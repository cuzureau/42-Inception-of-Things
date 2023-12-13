source ../confs/env.sh

echo "[$(hostname)] Installing K3S on server."

# Telechargement et installation de K3s
curl -sfL https://get.k3s.io |
sh -s - --write-kubeconfig-mode 644 \
    --node-ip $SERVER_IP \
    --bind-address=$SERVER_IP \
    --advertise-address=$SERVER_IP \
    --flannel-iface=eth1
    
# Boucle pour attendre la création du token par K3s
while [ ! -f $PATH_K3S_TOKEN ]; do
  sleep 1
done

# Copie du token K3s dans le dossier partage entre toutes les VMs
sudo cp $PATH_K3S_TOKEN $PATH_SHARED_FOLDER

echo "[$(hostname)] Configured succesfully"
