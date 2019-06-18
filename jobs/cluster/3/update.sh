ITER=$(seq 1 6)

for i in $ITER; do
	kubectl delete job spark-q3-cluster-3
	kubectl create -f q3.yaml
	sleep 1200
done;

for i in $ITER; do
	kubectl delete job spark-q5-cluster-3
	kubectl create -f q5.yaml
	sleep 1500
done;
