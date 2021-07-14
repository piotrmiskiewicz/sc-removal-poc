

k3d cluster create

helm repo add svc-cat https://kubernetes-sigs.github.io/service-catalog
kubectl create ns catalog
helm install catalog svc-cat/catalog --namespace catalog --set asyncBindingOperationsEnabled=true

helm install pod-preset charts/pod-preset

kubectl apply -f charts/usagekinds.servicecatalog.crd.yaml