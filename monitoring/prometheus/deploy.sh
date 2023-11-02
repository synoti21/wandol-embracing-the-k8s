kubectl apply -f prometheus-cluster-role.yaml
kubectl apply -f prometheus-config-map.yaml
kubectl apply -f prometheus-deploy.yaml
kubectl apply -f prometheus-node-exporter.yaml
kubectl apply -f prometheus-svc.yaml

kubectl apply -f kube-state-cluster-role.yaml
kubectl apply -f kube-state-deploy.yaml
kubectl apply -f kube-state-svcaccount.yaml
kubectl apply -f kube-state-svc.yaml

