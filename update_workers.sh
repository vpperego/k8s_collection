mapfile -t WORKERS < <(kubectl get pods -o wide | grep "spark-worker" | mawk '{print $1}')
declare -p WORKERS

MESSAGE=$(kubectl get pods -o wide | grep "spark-worker" | mawk '{print $6,$1}')
#echo "$MESSAGE"
for i in "${WORKERS[@]}"; do
	kubectl exec -i $i  -- /bin/bash -c "echo \"$MESSAGE\" >> /etc/hosts"
done;
