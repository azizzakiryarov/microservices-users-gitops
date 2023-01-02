# microservices-users-gitops

This repository I created to try and test ArgoCD 



# Installation of minikube 

```bash
$ sudo apt install -y curl wget apt-transport-https

$ wget https://storage.googleapis.com/minikube/releases/latest/minikube-linux-arm64

$ sudo cp minikube-linux-arm64 /usr/local/bin/minikube
$ sudo chmod +x /usr/local/bin/minikubec

$ minikube version
```
# Start minikube 

```bash
$ minikube start --driver='docker'
```

# Open port to login page

```bash
$ kubectl port-forward service/argocd-server --address=127.0.0.1 8888:443  -n argocd
```

# Get the password from login page

```bash
$ kubectl get secret argocd-initial-admin-secret -n argocd -o yaml | grep password 

$ echo <password> | base64 --decode
```
