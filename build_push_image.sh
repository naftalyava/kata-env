docker build -t ubuntu-systemd:latest .
docker tag ubuntu-systemd:latest navadiaev/ubuntu-systemd:latest
docker push navadiaev/ubuntu-systemd
kubectl create -f custom_kernel_pod_6.yaml
