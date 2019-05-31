kubectl delete job kafka-sf-0.2-producer
kubectl delete job.batch/kafka-producer
kubectl delete deployment.apps/kafka-broker
kubectl delete deployment.apps/zookeeper
sleep 10
kubectl create -f d-zookeeper.yaml
sleep 5
kubectl create -f d-kafka.yaml
