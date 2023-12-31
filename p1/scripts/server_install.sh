echo "[$(hostname)] Installing K3S on server."

# Telechargement et installation de K3s
curl -sfL https://get.k3s.io |
sh -s - --write-kubeconfig-mode 644 \
    --node-ip $SERVER_IP
    
# Boucle pour attendre la création du token par K3s
while [ ! -f $K3S_TOKEN ]; do
  sleep 1
done

# Copie du token K3s dans le dossier partage entre toutes les VMs
sudo cp $K3S_TOKEN /$SYNCED_FOLDER

echo "[$(hostname)] Configured succesfully"
