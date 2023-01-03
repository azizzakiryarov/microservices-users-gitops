# build k8s microservices-users-gitops

minikube start --driver='docker'
#minikube addons enable ingress
#minikube addons enable ingress-dns

kubectl config set-context --current --namespace=microservices

kubectl apply -f https://raw.githubusercontent.com/kubernetes/ingress-nginx/controller-v1.1.1/deploy/static/provider/cloud/deploy.yaml
kubectl apply -f $PWD/k8s/base/microservices-agrocd/namespace.yaml
kubectl apply -n argocd -f $PWD/k8s/base/microservices-agrocd/install.yaml
#kubectl apply -f $PWD/k8s/base/application.yaml -n argocd
