kubectl apply -f $PWD/k8s/base/microservices-mysql-db/deployment.yaml

kubectl apply -f $PWD/k8s/base/microservices-mysql-db/service.yaml

kubectl apply -f $PWD/k8s/base/microservices-mysql-db/secret.yaml

kubectl apply -f $PWD/k8s/base/microservices-mysql-db/persistent-volume.yaml

kubectl apply -f $PWD/k8s/base/microservices-mysql-db/persistent-volume-claim.yaml