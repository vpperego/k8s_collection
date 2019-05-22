kubectl exec -it  $1  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $2 --topic customer
kubectl exec -it  $1  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $2 --topic order
kubectl exec -it  $1  -- kafka-topics.sh --create --bootstrap-server kafka-broker:9092 --replication-factor 1 --partitions $2 --topic lineitem
