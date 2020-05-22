# Example 2

An EC2 instance will be created on your AWS account.

A bash script writes "Hello, World" into index.html, and fires up a server on port 8080.
This is done when the instance is booting.

In order to have this script run by our EC2 instance, we need to create a security group, allowing traffic on port 8080, and add it as part of the *vpc_security_group_ids* of our EC2 instance.

To access the server need then to run:

* curl http://<EC2_PUBLIC_IP>:8080


When dealing with multiple servers, you need to:

* create a Launch Configuration instead of an instance
* configure an Auto Scaling Group, where you need to specify min, max instances and AZs for the Launch Configuration.
* configure a Load Balancer, with its security group, and add it into the ASG
* configure an Health Check on your cluster, allowing outbound requests in the security group of the Load Balancer.

To access the server need then to run:

* curl http://<ELB_DNS_NAME>
