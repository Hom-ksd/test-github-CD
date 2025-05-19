apiVersion: v1
kind: Service
metadata:
  name: backend-uat-service
spec:
  selector:
    app: backend-uat
  ports:
    - protocol: TCP
      port: 8080
      targetPort: 8080
