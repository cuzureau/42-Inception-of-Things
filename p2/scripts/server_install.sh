echo "[$(hostname)] Installing K3S on server."

# Telechargement et installation de K3s
curl -sfL https://get.k3s.io |
sh -s - --write-kubeconfig-mode 644 \
    --node-ip $SERVER_IP \
    --flannel-iface=eth1

while [ ! -e /var/lib/rancher/k3s/server/token ]
do
    sleep 1
done

echo "[$(hostname)] Deploying app1"
kubectl create configmap app1-configmap --from-file=/$SYNCED_FOLDER/app1/index.html
kubectl apply -f /$SYNCED_FOLDER/app1/app1.yaml

echo "[$(hostname)] Deploying app2"
kubectl create configmap app2-configmap --from-file=/$SYNCED_FOLDER/app2/index.html
kubectl apply -f /$SYNCED_FOLDER/app2/app2.yaml

echo "[$(hostname)] Deploying app3"
kubectl create configmap app3-configmap --from-file=/$SYNCED_FOLDER/app3/index.html
kubectl apply -f /$SYNCED_FOLDER/app3/app3.yaml

echo "[$(hostname)] Configured succesfully"
