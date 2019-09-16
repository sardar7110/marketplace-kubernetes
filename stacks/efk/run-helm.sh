#!/bin/sh

kubectl -n kube-system create serviceaccount tiller
kubectl create clusterrolebinding tiller --clusterrole cluster-admin --serviceaccount=kube-system:tiller
helm init --service-account tiller
helm repo add elastic https://helm.elastic.co
helm install --name elasticsearch elastic/elasticsearch
helm install --name kibana elastic/kibana
helm repo add kiwigrid https://kiwigrid.github.io
helm install kiwigrid/fluentd-elasticsearch
