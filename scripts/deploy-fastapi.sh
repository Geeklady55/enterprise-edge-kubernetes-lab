#/bin/bash

set -e

echo "Deploying FastAPI to Kubernetes..."

cd ~/enterprise-edge-kubernetes-lab/k8s

kubectl apply -f fastapi-deployment.yaml
kubectl apply -f fastapi-service.yaml

echo "Waiting for pods..."
sleep 10

kubectl get pods
kubectl get svc

echo "Deployment complete."


