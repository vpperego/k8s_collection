kubectl delete deployment spark-worker
kubectl delete deployment spark-master
sleep 15
kubectl create -f d-spark-master.yaml
sleep 20
kubectl create -f d-spark-worker.yaml
