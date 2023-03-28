# Go Application
This is a simple HTTP service that responds to GET requests on the root path ("/") by returning the current timestamp and hostname.

## Build
To build the application, run the following command:

```
go build -o app
```

This will create a binary named "app" in the current directory.

Run
To run the application, execute the binary:

```
./app
```

The service will listen on port 8080.

## Docker
A Dockerfile is included in the repository to build a Docker image of the application. To build the Docker image, run the following command:

```
docker build -t my-service:latest .
```

This will build the Docker image with the tag "my-service:latest".

To run the Docker container, use the following command:

```
docker run --rm -p 8080:8080 my-service:latest
```

The service will be accessible on http://localhost:8080/.

## Kubernetes Manifests
This repository includes Kubernetes manifests to deploy the Go application as a Kubernetes Deployment, Service, and Ingress.

## Prerequisites
To use these manifests, you will need to have a Kubernetes cluster and the kubectl command-line tool installed.

## Deployment
To deploy the application, run the following command:

```
kubectl apply -f cluster/deployment.yaml
```

This will create a Kubernetes Deployment with 3 replicas.

## Service
To create a Kubernetes Service, run the following command:


```
kubectl apply -f cluster/service.yaml
```
This will create a Kubernetes Service that exposes the Deployment on port 80.

## Ingress
To create a Kubernetes Ingress, run the following command:

```
kubectl apply -f cluster/ingress.yaml
```

This will create a Kubernetes Ingress that routes traffic to the Service. The Ingress will be accessible on http://my-service.local/. Note that you will need to update your local DNS or hosts file to point my-service.local to the IP address of your Kubernetes cluster.

## Monitoring
To create a Prometheus monitoring, run the following command:

```
kubectl apply -f cluster/monitor.yaml
```
## Cleanup
To delete the Kubernetes resources created by the manifests, run the following commands:

```
kubectl delete ingress my-service
kubectl delete service my-service
kubectl delete deployment my-service
```





