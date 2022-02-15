apiVersion: autoscaling/v1
kind: HorizontalPodAutoscaler
metadata:
  name: cargo
spec:
  maxReplicas: 10
  minReplicas: 4
  scaleTargetRef:
    apiVersion: apps/v1
    kind: Deployment
    name: cargo
