images=(
gcr.io/google_containers/etcd-amd64:3.1.10
gcr.io/google_containers/kube-apiserver-amd64:v1.9.5
gcr.io/google_containers/kube-controller-manager-amd64:v1.9.5
gcr.io/google_containers/kube-scheduler-amd64:v1.9.5
)

for imageName in ${images[@]} ; 
do
    docker pull gcr.io/google_containers/$imageName£»
    docker tag gcr.io/google_containers/$imageName docker.io/liuqu11/$imageName£»
    docker push docker.io/liuqu11/$imageName£»
done