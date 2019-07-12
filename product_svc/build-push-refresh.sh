REPO=docker.io/theburi
APP=product-service
IMAGE="${REPO}/${APP}"
docker build -t ${IMAGE} .
docker push ${IMAGE}
kubectl delete -f ${APP}.yaml
sleep 20
kubectl create -f ${APP}.yaml

