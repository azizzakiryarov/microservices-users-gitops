# build k8s microservices-users-gitops

kubectl config set-context --current --namespace=microservices

kubectl delete deployment.apps/mysql service/mysql-service
kubectl delete deployment.apps/microservices-users-deployment service/microservices-users

kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-mysql-db/deployment.yaml
kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-mysql-db/service.yaml
kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-mysql-db/secret.yaml
kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-mysql-db/persistent-volume.yaml
kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-mysql-db/persistent-volume-claim.yaml

kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-users/deployment.yaml
kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-users/service.yaml
kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-users/ingress.yaml

kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-agrocd/namespace.yaml
kubectl apply -n argocd -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-agrocd/install.yaml

kubectl apply -f /Users/azizzakiryarov/IdeaProjects/microservices-users-gitops/k8s/base/microservices-agrocd/application.yaml