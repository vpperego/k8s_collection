ITER=$(seq 1 6)

for i in $ITER; do
	kubectl delete job spark-q2-cluster-6
	kubectl create -f q2_0.2.yaml
	sleep 1200
done;
