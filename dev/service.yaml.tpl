apiVersion: v1
kind: Service
metadata:
  name: backend-dev-service
spec:
  selector:
    app: backend-dev
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
