kubectl delete job.batch/kafka-producer
kubectl delete deployment.apps/kafka-broker
kubectl delete deployment.apps/zookeeper
sleep 5
kubectl create -f d-zookeeper.yaml
kubectl create -f d-kafka.yaml
sleep 40
BROKER_ID=$(kubectl get pods | grep "kafka-broker" | mawk '{print $1}')
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic customer
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic order
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic lineitem
sleep 5
kubectl create -f ../jobs/j-kafka-producer.yaml
