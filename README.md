# terraform_pratice
Here’s a general import command template for each service (replace the placeholders):
terraform import module.vpc.aws_vpc.this <vpc-id>
terraform import module.subnets.aws_subnet.public <public-subnet-id>
terraform import module.subnets.aws_subnet.private <private-subnet-id>
terraform import module.security-group.aws_security_group.this <sg-id>
terraform import module.ec2.aws_instance.this <ec2-instance-id>
terraform import module.rds.aws_db_instance.this <rds-instance-id>
terraform import module.s3.aws_s3_bucket.this <bucket-name>
terraform import module.alb.aws_lb.this <alb-name-or-arn>

Example:
terraform import module.vpc.aws_vpc.this vpc-0a1b2c3d4e5f6g7h8
terraform import module.subnets.aws_subnet.public subnet-12345678
terraform import module.subnets.aws_subnet.private subnet-87654321
terraform import module.security_group.aws_security_group.this sg-00beaafb198c4445e
terraform import module.ec2.aws_instance.this i-0123456789abcdef0
terraform import module.rds.aws_db_instance.this mydbinstance
terraform import module.s3.aws_s3_bucket.this my-bucket-001
terraform import module.alb.aws_lb.this my-loadbalancer

How to see the service details after import:
  terraform state show module.vpc.aws_vpc.this

Run terraform show to View the Current State
  terraform show
Save Resource Details to a File
  terraform show > state.txt
eg terraform show -json > state.json
