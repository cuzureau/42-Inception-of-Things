echo "[$(hostname)] Installing K3S on server."

# Telechargement et installation de K3s
curl -sfL https://get.k3s.io |
sh -s - --write-kubeconfig-mode 644 \
    --node-ip $SERVER_IP \
    --bind-address=$SERVER_IP \
    --advertise-address=$SERVER_IP

echo "[$(hostname)] Deploying app1"
kubectl create configmap app-one-configmap --from-file=/$SYNCED_FOLDER/app1/index.html
kubectl apply -f /$SYNCED_FOLDER/app1/app1.yaml

echo "[$(hostname)] Deploying app2"
kubectl create configmap app-two-configmap --from-file=/$SYNCED_FOLDER/app2/index.html
kubectl apply -f /$SYNCED_FOLDER/app2/app2.yaml

echo "[$(hostname)] Deploying app3"
kubectl create configmap app-three-configmap --from-file=/$SYNCED_FOLDER/app3/index.html
kubectl apply -f /$SYNCED_FOLDER/app3/app3.yaml

echo "[$(hostname)] Configured succesfully"
