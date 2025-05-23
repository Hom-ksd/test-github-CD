apiVersion: apps/v1
kind: Deployment
metadata:
  name: backend
  namespace: ${NAMESPACE}
spec:
  replicas: 3
  selector:
    matchLabels:  
      app: backend
  template:
    metadata:
      labels:
        app: backend
    spec:
      containers:
      - name: backend
        image: ${BACKEND_IMAGE}
        ports:
        - containerPort: 8080
      imagePullSecrets:
      - name: dockerhub-secret
