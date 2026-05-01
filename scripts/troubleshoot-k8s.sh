#!/bin/bash

echo "Kubernetes Troubleshooting Report"
echo "================================="

echo ""
echo  "NODES:"
kubectl get nodes


echo ""
echo "PODS:"
kubectl get pods -o wide

echo ""
echo "SERVICES:"
kubectl get svc

echo ""
echo "EVENTS:"
kubectl get events --sort-by=.metadata.creationTimestamp | tail -20


echo ""
echo "DEPLOYMENTS:"
kubectl get deployments



