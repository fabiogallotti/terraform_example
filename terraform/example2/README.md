# Example 2

An EC2 instance will be created on your AWS account.

A bash script writes "Hello, World" into index.html, and fires up a server on port 8080.
This is done when the instance is booting.

In order to have this script run by our EC2 instance, we need to create a security group, allowing traffic on port 8080, and add it as part of the *vpc_security_group_ids* of our EC2 instance.

To access the server need then to run:

+ curl http://<EC2_PUBLIC_IP>:8080