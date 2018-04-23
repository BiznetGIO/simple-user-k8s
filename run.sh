#!/bin/bash
kubectl --kubeconfig=/home/k8s/.kube/config create -f 01-service.yml
kubectl --kubeconfig=/home/k8s/.kube/config create -f 02-service.yml
cat << 'EOF' >> /bin/kube-token
#!/bin/bash
kubectl -n kube-system describe secret $(kubectl -n kube-system get secret | grep admin-user | awk '{print $1}')
EOF
chmod +x /bin/kube-token
