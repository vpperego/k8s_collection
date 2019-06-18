ITER=$(seq 1 5)

for i in $ITER; do
	kubectl delete job spark-q2-cluster-4
	kubectl create -f q2_0.2.yaml
	sleep 1200
done;
