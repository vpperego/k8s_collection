kubectl exec -it $(kubectl get pods | grep "hdfs-namenode" | mawk '{print $1}')   -- hadoop fs -$1
