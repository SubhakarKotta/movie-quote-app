#!/usr/bin/env bash
kubectl create namespace movie

kubectl label namespace movie istio-injection=enabled

kubectl create configmap nginx-config --from-file=./config/nginx.conf -n movie

kubectl apply -f kubefiles/movie-quote-service.yml -n movie
kubectl apply -f kubefiles/movie-quote-consumer.yml -n movie


