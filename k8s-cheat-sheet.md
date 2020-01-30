**To get pods in a namespace**
```
kubectl get pods -n <ns-name> 
```

**To describe pod of a given namespace**
```
kubectl describe pods -n <ns-name> <pod-name>
```

**To get service in a namespace**
```
kubectl get svc -n <ns-name> <service-name> 
```
**SSH on pod inside a namespace**
```
kubectl exec -it -n <ns-name> pod/<pod-name> -- sh
```






