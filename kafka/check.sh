BROKER_ID=$(kubectl get pods | grep "kafka-broker" | mawk '{print $1}')
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic lineitem --time -1
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic order --time -1
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic customer --time -1
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic supplier --time -1
