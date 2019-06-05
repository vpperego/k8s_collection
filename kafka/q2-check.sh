BROKER_ID=$(kubectl get pods | grep "kafka-broker" | mawk '{print $1}')
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic part --time -1
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic partsupp --time -1
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic supplier --time -1
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic region --time -1
kubectl exec -it $BROKER_ID -- kafka-run-class.sh kafka.tools.GetOffsetShell --broker-list localhost:9092 --topic nation --time -1
