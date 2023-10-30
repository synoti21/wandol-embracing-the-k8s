wget https://github.com/istio/istio/releases/download/1.16.7/istio-1.16.7-linux-amd64.tar.gz
tar -xvf istio-1.16.7-linux-amd64.tar.gz
cd istio-1.16.7
export PATH=$PWD/bin:$PATH
istioctl install --set profile=default -y
kubectl apply -f samples/addons


