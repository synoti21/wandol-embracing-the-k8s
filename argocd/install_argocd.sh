wget https://raw.githubusercontent.com/argoproj/argo-cd/stable/manifests/install.yaml

#Change NameSpace
kubectl apply -f install.yaml
curl -sSL -o argocd-linux-amd64 https://github.com/argoproj/argo-cd/releases/latest/download/argocd-linux-amd64
sudo install -m 555 argocd-linux-amd64 /usr/local/bin/argocd
rm argocd-linux-amd64
kubectl patch svc argocd-server -n cicd -p '{"spec": {"type": "LoadBalancer"}}'