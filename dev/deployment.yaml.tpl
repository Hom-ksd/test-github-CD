apiVersion: apps/v1
kind: Deployment
metadata:
  name: backend-dev
spec:
  replicas: 3
  selector:
    matchLabels:
      app: backend-dev
  template:
    metadata:
      labels:
        app: backend-dev
    spec:
      containers:
      - name: backend-dev
        image: ${BACKEND_IMAGE}
        ports:
        - containerPort: 8080
      imagePullSecrets:
      - name: dockerhub-secret
