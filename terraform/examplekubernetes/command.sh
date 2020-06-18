kops create cluster \
--name=myfirstcluster.k8s.local \
--state s3://terraform-kubernetes-fabiogallo \
--zones=us-east-1a \
--node-count=1 \
--node-size=t2.micro \
--master-size=t2.micro \
--out=. \
--target=terraform