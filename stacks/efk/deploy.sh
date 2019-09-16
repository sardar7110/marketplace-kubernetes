#!/bin/sh

kubectl apply -f kube-logging.yaml
kubectl apply -f elasticsearch_svc.yaml
kubectl apply -f elasticsearch_statefulset.yaml
kubectl apply -f kibana.yaml
kubectl apply -f fluentd.yaml
kubectl apply -f counter.yaml
