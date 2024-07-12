kubectl create -f https://download.elastic.co/downloads/eck/2.8.0/crds.yaml
kubectl apply -f https://download.elastic.co/downloads/eck/2.8.0/operator.yaml
kubectl create -f elasticsearch.yaml
kubectl create -f logstash.yaml
kubectl create -f kibana.yaml
kubectl create -f beats.yaml
kubectl create -f apm.yaml

