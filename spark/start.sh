kubectl create -f d-spark-master.yaml
sleep 7
kubectl create -f d-spark-worker.yaml
