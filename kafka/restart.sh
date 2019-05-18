kubectl delete deployment.apps/kafka-broker
kubectl delete deployment.apps/zookeeper
kubectl create -f d-zookeeper.yaml
sleep 5
kubectl create -f d-kafka.yaml
