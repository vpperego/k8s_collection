kubectl delete job.batch/kafka-producer
kubectl delete deployment.apps/kafka-broker
kubectl delete deployment.apps/zookeeper
sleep 5
kubectl create -f d-zookeeper.yaml
kubectl create -f d-kafka.yaml
