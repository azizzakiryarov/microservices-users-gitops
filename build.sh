# build k8s microservices-users-gitops

minikube start
minikube addons enable ingress

kubectl config set-context --current --namespace=microservices

kubectl apply -f $PWD/k8s/base/microservices-agrocd/namespace.yaml
kubectl apply -n argocd -f $PWD/k8s/base/microservices-agrocd/install.yaml