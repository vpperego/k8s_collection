BROKER_ID=$(kubectl get pods | grep "kafka-broker" | mawk '{print $1}')
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic customer
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic order
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic lineitem
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic supplier
