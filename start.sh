#!/bin/bash

# Assuming you have a kubernetes cluster and are pointing to it in the config
# Let's start with Installing Helm

echo "Installing Helm"

#brew install helm

# Install kubeapps

helm repo add bitnami https://charts.bitnami.com/bitnami
kubectl create namespace kubeapps
helm install kubeapps --namespace kubeapps bitnami/kubeapps
