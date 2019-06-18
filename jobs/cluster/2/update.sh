ITER=$(seq 1 6)

for i in $ITER; do
	sleep 600
	kubectl delete job spark-q2-cluster-2
	kubectl create -f q2_0.2.yaml
done;
