#!/bin/bash
kubectl create -f 01-service.yml
kubectl create -f 02-service.yml
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')
