apiVersion: apps/v1
kind: Deployment
metadata:
  name: backend-uat
spec:
  replicas: 3
  selector:
    matchLabels:
      app: backend-uat
  template:
    metadata:
      labels:
        app: backend-uat
    spec:
      containers:
      - name: backend-uat
        image: ${BACKEND_IMAGE}
        ports:
        - containerPort: 8080
      imagePullSecrets:
      - name: dockerhub-secret
