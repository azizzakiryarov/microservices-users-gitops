kubectl apply -f $PWD/k8s/base/microservices-teams/deployment.yaml

kubectl apply -f $PWD/k8s/base/microservices-users/service.yaml

kubectl apply -f $PWD/k8s/base/microservices-users/ingress.yaml