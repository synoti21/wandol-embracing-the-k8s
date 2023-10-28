kubectl apply -f k8s_dashboard.yaml
kubectl apply -f create-admin.user.yaml
kubectl apply -f dashboard-role-binding.yaml
kubectl apply -f token-to-secret.yaml