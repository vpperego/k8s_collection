BROKER_ID=$(kubectl get pods | grep "kafka-broker" | mawk '{print $1}')
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic part
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic partsupp
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic supplier
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic nation
kubectl exec -it  $BROKER_ID  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $1 --topic region
