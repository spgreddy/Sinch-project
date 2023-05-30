#!/bin/bash

set -e

# Set the Kubernetes context to the EKS cluster
export KUBECONFIG=$HOME/.kube/config
aws eks --region <aws_region> update-kubeconfig --name <cluster_name>

# Apply the Kubernetes manifests
kubectl apply -f kubernetes/trdl-deployment.yaml
kubectl apply -f kubernetes/trdl-service.yaml

echo "Deployment successful!"
