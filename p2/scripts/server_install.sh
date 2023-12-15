echo "[$(hostname)] Installing K3S on server."

# Telechargement et installation de K3s
curl -sfL https://get.k3s.io |
sh -s - --write-kubeconfig-mode 644 \
    --node-ip $SERVER_IP \
    --bind-address=$SERVER_IP \
    --advertise-address=$SERVER_IP

echo "[$(hostname)] Deploying app-1"
kubectl create configmap app-one-configmap --from-file=/apps/app1/index.html
kubectl apply -f /apps/app1/app1.yaml

echo "[$(hostname)] Deploying app-2"
kubectl create configmap app-two-configmap --from-file=/apps/app2/index.html
kubectl apply -f /apps/app2/app2.yaml

echo "[$(hostname)] Deploying app-3"
kubectl create configmap app-three-configmap --from-file=/apps/app3/index.html
kubectl apply -f /apps/app3/app3.yaml

echo "[$(hostname)] Configured succesfully"
