hostnamectl hostname  controller --pretty  --static 
exec bash 
ip addr show
vim /etc/hosts
exec bash 
ping worker1
vim /etc/fstab 
swapoff -a
cat <<EOF | sudo tee /etc/modules-load.d/k8s.conf
overlay
br_netfilter
EOF

sudo modprobe overlay
sudo modprobe br_netfilter
# sysctl params required by setup, params persist across reboots
cat <<EOF | sudo tee /etc/sysctl.d/k8s.conf
net.bridge.bridge-nf-call-iptables  = 1
net.bridge.bridge-nf-call-ip6tables = 1
net.ipv4.ip_forward                 = 1
EOF

# Apply sysctl params without reboot
sudo sysctl --system
sudo apt-get update 
sudo apt-get install -y apt-transport-https ca-certificates curl
sudo mkdir /etc/apt/keyrings
curl -fsSL https://packages.cloud.google.com/apt/doc/apt-key.gpg | sudo gpg --dearmor -o /etc/apt/keyrings/kubernetes-archive-keyring.gpg
echo "deb [signed-by=/etc/apt/keyrings/kubernetes-archive-keyring.gpg] https://apt.kubernetes.io/ kubernetes-xenial main" | sudo tee /etc/apt/sources.list.d/kubernetes.list
apt install kubeadmin kubelet kubectl -y 
sudo apt-get update
apt install kubeadmin kubelet kubectl -y 
apt install kubeadm kubelet kubectl -y 
sudo apt install docker.io
sudo mkdir /etc/containerd
sudo sh -c "containerd config default > /etc/containerd/config.toml"
sudo sed -i 's/ SystemdCgroup = false/ SystemdCgroup = true/' /etc/containerd/config.toml
sudo systemctl restart containerd.service
sudo systemctl restart kubelet.service
sudo systemctl enable kubelet.service
sudo kubeadm config images pull
sudo kubeadm init --pod-network-cidr=10.10.0.0/16
kubectl get nodes
mkdir -p $HOME/.kube
sudo cp -i /etc/kubernetes/admin.conf $HOME/.kube/config
sudo chown $(id -u):$(id -g) $HOME/.kube/config
kubectl get nodes
cat /proc/meminfo 
lsblk
df -hT
kubectl  get services
kubectl get nodes
kubectl describe controller
kubectl describe nodes
kubectl apply -f https://github.com/weaveworks/weave/releases/download/v2.8.1/weave-daemonset-k8s.yaml
kubectl describe nodes
kubectl get nodes
kubectl get svc
kubectl get nodes
vim app-pod.yml
kubectl  apply -f app-pod.yml 
vim app-pod.yml
kubectl  apply -f app-pod.yml 
vim app-pod.yml
kubectl  apply -f app-pod.yml 
vim app-pod.yml
kubectl  apply -f app-pod.yml 
vim app-pod.yml
kubectl  apply -f app-pod.yml 
vim deployment.yml
kubectl  apply -f deployment.yml 
vim deployment.yml
kubectl  apply -f deployment.yml 
vim deployment.yml 
kubectl get pods -o wide
kubectl  apply -f deployment.yml 
kubectl get deployments --as system:serviceaccount:kube-system:gitlab-admin -n default
kubectl  apply -f deployment.yml 
kubectl get pods -o wide
kubeadm version
kubeadm -h
kubeadm version
kubectl  describe pods
ping 10.36.0.1
ssh  10.36.0.1
cat /var/run/secrets/kubernetes.io/serviceaccount
apt-get -h
apt-get install  -h
man apt-get install 
kubectl get nodes
kubectl get pods 
history 
kubectl  get -o
kubectl  get -h
kubectl get pos
kubectl get pods
kubectl exec -c my-pod
kubectl exec -c my-pod lsblk
kubectl exec -c my-pod --  lsblk
cont.yml
vim cont.yml
kubectl  apply -f cont.yml 
vim cont.yml
kubectl  apply -f cont.yml 
vim cont.yml
kubectl  apply -f cont.yml 
cat app-pod.yml 
vim cont.yml
kubectl  apply -f cont.yml 
vim cont.yml
kubectl  apply -f cont.yml 
vim cont.yml
kubectl  apply -f cont.yml 
vim cont.yml
kubectl  apply -f cont.yml 
kubectl get pods 
vim cont.yml
kubectl  apply -f cont.yml 
kubectl get pods 
kubectl delete pod pod-count  
kubectl delete pod pod-cont  
kubectl  apply -f cont.yml 
kubectl get pods 
kubectl describe pod-cont
kubectl describe pod pod-cont
kubectl get pods 
kubectl describe pod pod-cont
kubectl get pods  -o wide 
kubectl get nodes 
kubectl describe pod 
kubectl get pods  -o wide -yaml
kubectl get pods  -o wide -jason
kubectl get pods  -n kube-system 
kubectl exec pod-cont -c busybox -- echo 'hello world !'
kubectl  get pods 
kubectl exec my-pod  -c nginx  -- echo 'hello world !'
cat app-pod.yml 
cat cont.yml 
kubectl exec my-pod  -c   -- echo 'hello world !'
kubectl exec my-pod    -- echo 'hello world !'
kubectl exec my-pod    -- lsblk
kubectl exec my-pod    -- ip addr show
kubectl exec my-pod    -- df -hT
kubectl apply -f https://k8s.io/examples/application/deployment.yaml
kubectl get pods 
ll
cat deployment.yml 
kubectl get pods -l app=nginx
kubectl apply -f https://k8s.io/examples/application/deployment-update.yaml
kubectl get pods -l app=nginx
kubectl apply -f https://k8s.io/examples/application/deployment-scale.yaml
kubectl get pods -l app=nginx
kubectl get pods -o wide
kubectl apply -f https://raw.githubusercontent.com/kubernetes/dashboard/v2.7.0/aio/deploy/recommended.yaml
kubectl proxy
kubectl get sa
kubectl my-pod -- cat /etc/hosts
kubectl my-pod -- lsblk
kubectl exec my-pod    -- cat /etc/hosts
kubectl exec nginx-deployment-848dd6cfb5-bms6t    -- cat /etc/hosts
kubectl top 
kubectl top  nginx-deployment-848dd6cfb5-bms6t
kubectl top  pod
curl  http://localhost:8001/api/v1/namespaces/kubernetes-dashboard/services/https:kubernetes-dashboard:/proxy
kubectl  describe pods 
kubectl get pods 
vim config-map.yml
kubectl create -f config-map.yml 
vim config-map.yml
kubectl create -f config-map.yml 
kubectl get configmap
kubectl describe configmap
kubectl describe config-map.yml 
kubectl describe my-configmap
kubectl describe    configmap  my-configmap
vim secret.yml
echo  -n  'username' | base64
vim secret.yml
echo  -n  'admimadmin' | base64
vim secret.yml
echo  -n  'lock#@2514' | base64
vim secret.yml
kubectl create -f secret.yml 
kubectl log my-pod
kubectl logs my-pod
vim pod-kube.yml
kubectl create -f pod-kube.yml 
kubectl  get pods 
kubectl describe pod nginx-pod
hostnamectl  hostname controller --pretty --static
ip addr show
kubectl get pods
kubectl get namespaces
vim /etc/hosts
history 
kubectl get svc
kubectl get nodes
kubectl  get all -n kubernetes-dashboard
kubectl get nodes 
ip addr show
kubectl get nodes 
kubeadm token create --print-join-command
kubectl get nodes 
kubectl get svc
kubectl get pods
kubectl get nodes 
kubectl get pods
systap
kubectl get nodes 
kubec  get pods
kubectl  get pods
kubectl describe nginx-deployment-848dd6cfb5-x292t
kubectl describe pod  nginx-deployment-848dd6cfb5-x292t
ll
vim myconfigmap.yml
kubectl create -f myconfigmap.yml 
kubectl describe configmap
ll
vim mysecret.yml
echo -n "username" | base64 
echo -n "adminadmin" | base64 
echo -n "macjacklee4411" | base64 
vim mysecret.yml
kubectl create -f myconfigmap.yml 
kubectl create -f mysecret.yml 
kubectl  describe secret
env-pod.yml
vim env-pod.yml
cat mysecret.yml 
vim env-pod.yml
cat myconfigmap.yml 
vim env-pod.yml
kubectl create -f env-pod.yml 
vim env-pod.yml
kubectl create -f env-pod.yml 
vim env-pod.yml
kubectl create -f env-pod.yml 
vim env-pod.yml
kubectl create -f env-pod.yml 
vim env-pod.yml
kubectl create -f env-pod.yml 
kubectl  logs nginx-web
vim env-pod.yml
kubectl apply -f env-pod.yml 
vim env-pod.yml
kubectl apply -f env-pod.yml 
kubectl create -f env-pod.yml 
kubectl  logs nginx-web
kubectl get pods
kubectl delete livenex-pod.yml
vim  livenex-pod.yml
kubectl create -f livenex-pod.yml 
vim  livenex-pod.yml
kubectl create -f livenex-pod.yml 
vim  livenex-pod.yml
kubectl create -f livenex-pod.yml 
vim  livenex-pod.yml
kubectl create -f livenex-pod.yml 
kubectl get pods 
kubectl get svc
kubectl get nodes
kubectl get pods -o wide
kubectl get nodes -o wide 
ll
kubectl get pods
kubectl get pods -o w
kubectl get pods -o wide
ll
vim mydeploymentver.yml
kubectl create -f mydeploymentver.yml 
kubectl get pods -o wide
vim mydeploymentver.yml
kubectl apply  -f mydeploymentver.yml 
kubectl get pods -o wide
kubectl  scale deployment.v1.apps/deployment-pod --relicas=3
kubectl  scale deployment.v1.apps/deployment-pod --replicas=3
kubectl get pods -o wide
cat mydeploymentver.yml 
kubectl get deployment
kubectl edit deployment mydeploymentver.yml 
kubectl edit deployment deployment-pod
kubectl  rollout status deployment.v1.apps/deployment-pod 
ll
lsblk
cat /lib/modules/$(uname -r)/modules.builtin
lsmod 
modinfo xfs
modinfo nvme
clear
modinfo nvme
lsmod 
modinfo -p drm
modinfo -p syscopyarea 
modinfo -P syscopyarea 
modinfo  syscopyarea 
modinfo -p be2iscsi 
ls /etc/modprobe.d/
kubectl  get pods -o wide
kubectl get pods -n kube-system | grep coredns
kubectl logs -n kube-system deployment-pod-5d88c5876d-sjjlj
kubectl logs -n kube-system coredns-deployment-pod-5d88c5876d-sjjlj
kubectl get svc -n kube-system kube-dns
kubectl get configmap coredns -n kube-system -o yaml
cat /etc/resolv.conf
kubectl get pods -n kube-system | grep coredns -o -wide
kubect get pods -n kube-system
kubectl get pods -n kube-system
kubectl get pods -n kube-system -o wide
kubectl  create namespace np-test
kubectl  label  namespace np-test team=np-test
vim np.ngnix.yml
kubectl create np.ngnix.yml 
mv np.ngnix.yml np-ngnix.yml
kubectl create np-ngnix.yml 
kubectl create -f np-ngnix.yml 
vim np-ngnix.yml 
kubectl create -f np-ngnix.yml 
vim np-busybox.yml
kubectl create -f np-busybox.yml 
vim np-busybox.yml
kubectl create -f np-busybox.yml 
kubectl  get pods -n np-test -o wide 
kubectl  exec -n np-test np-busybox 10.42.0.5
kubectl  exec -n np-test np-busybox curl  10.42.0.5
kubectl  exec -n np-test np-busybox curl  10.42.0.3
kubectl  exec -n np-busybox ping 10.42.0.2
kubectl  exec  np-busybox ping 10.42.0.2
kubectl  exec  np-busybox -- ping 10.42.0.2
kubectl exec -it np-busybox -- ping 10.42.0.2
kubectl exec -it nginx-deployment-848dd6cfb5-x292t  -- ping 10.42.0.2
kubectl exec -it nginx-deployment-848dd6cfb5-x292t  -- lsblk
kubectl exec -it np-busybox -- lsblk
kubectl get pods 
kubectl  get pods -n np-test -o wide 
kubectl exec --help
kubect get pods -n kube-system
kubectl get pods -n kube-system
kubectl get pods -n kube-system -o wide
kubectl get configmap coredns -n kube-system -o yaml
kubectl  get pods -n kube-system
kubectl get service
kubectl get service --all-namespaces
cat deployment.yml 
vim svc-deployment.yml
kubectl create -f svc-deployment.yml 
vim svc-deployment.yml
kubectl create -f svc-deployment.yml 
kubectl get pods -o wide
vim svc-deployment.yml
kubectl apply  -f svc-deployment.yml 
kubectl get pods -o wide
vim svc-deployment.yml
kubectl apply  -f svc-deployment.yml 
vim svc-deployment.yml
kubectl get pods -o wide
kubectl logs deployment-svc-example-56bbb7c4fd-wqfxc
kubectl delete pods -l deployment-svc
kubectl delete pods -l deployment-svc-example-56bbb7c4fd-wqfxc
kubectl delete pods  deployment-svc-example-56bbb7c4fd-wqfxc
kubectl delete pods  deployment-svc-example-5dff9f978b-n689z
kubectl delete pods  deployment-svc-example-7b79f8d67b-m5vds
kubectl get pods -o wide
kubectl delete pods  deployment-svc-example-7b79f8d67b-m5vds
kubectl create -f svc-deployment.yml 
kubectl get pods -o wide
kubectl apply  -f svc-deployment.yml 
cat svc-deployment.yml 
kubectl delete pods  -l app=SVC-*
kubectl get pods -o wide
vim clusterIp.yml
kubectl  create -f clusterIp.yml 
kubectl get endpoints
kubectl get endpoints svc-clusterip
vim clusterIp.yml
kubectl  apply -f clusterIp.yml 
kubectl get endpoints svc-clusterip
vim clusterIp.yml
kubectl  apply -f clusterIp.yml 
kubectl get endpoints svc-clusterip
kubectl  exec deployment-pod -- curl svc-clusterip:80
kubectl  exec nginx-deployment-848dd6cfb5-x292t  -- curl svc-clusterip:80
kubectl  exec nginx-deployment  -- curl svc-clusterip:80
kubectl  exec deployment-pod-5d88c5876d-sjjlj  -- curl svc-clusterip:80
kubectl  exec nginx-deployment-848dd6cfb5-x292t  -- curl svc-clusterip:80
vim nodeport.yml
kubectl create -f nodeport.yml 
kubectl get svc
kubectl  exec nginx-deployment-848dd6cfb5-x292t  -- nslookup
kubectl  exec nginx-deployment-848dd6cfb5-x292t  -- nslookup 10.108.199.31
kubectl  exec deployment-pod-5d88c5876d-sjjlj  -- curl svc-clusterip:80
kubectl  exec nginx-deployment-848dd6cfb5-x292t  -- ping 10.108.199.31
kubectl  exec nginx-deployment-848dd6cfb5-x292t  -- nslookup 10.108.199.31
kubectl  exec nginx-deployment-848dd6cfb5-x292t  -- lsblk
kubectl  exec nginx-deployment-848dd6cfb5-x292t  -- nslookup 10.97.27.189
kubectl  exec deployment-pod-5d88c5876d-sjjlj  -- nslookup 10.108.199.31
nslookup 10.108.199.31
kubectl  exec deployment-pod-5d88c5876d-sjjlj  -- nslookup 10.108.199.31
ping  10.108.199.31
vim ingres-svc.yml
