variable "vpc_cidr" {
  description = "CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}

variable "public_subnet_cidr" {
  description = "CIDR block for public subnet"
  type        = string
  default     = "10.0.1.0/24"
}

variable "private_subnet_cidr" {
  description = "CIDR block for private subnet"
  type        = string
  default     = "10.0.2.0/24"
}

variable "azs" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["us-east-1a", "us-east-1b"]
}

variable "s3_bucket" {
  description = "S3 bucket name"
  type        = string
  default     = "my-unique-bucket-name-terraform"
}

variable "ec2_ami" {
  description = "AMI ID for EC2"
  type        = string
  default     = "ami-12345678"
}

variable "ec2_instance_type" {
  description = "EC2 instance type"
  type        = string
  default     = "t3.micro"
}

variable "db_allocated_storage" {
  description = "Allocated storage for RDS"
  type        = number
  default     = 20
}

variable "db_engine" {
  description = "RDS engine"
  type        = string
  default     = "mysql"
}

variable "db_instance_class" {
  description = "RDS instance class"
  type        = string
  default     = "db.t3.micro"
}

variable "db_name" {
  description = "Database name"
  type        = string
  default     = "mydatabase"
}

variable "db_username" {
  description = "Database username"
  type        = string
  default     = "admin"
}

variable "db_password" {
  description = "Database password"
  type        = string
  sensitive   = true
  default     = "ChangeMe123!"
}

variable "alb_name" {
  description = "Application Load Balancer name"
  type        = string
  default     = "my-alb"
}

variable "alb_internal" {
  description = "Is ALB internal?"
  type        = bool
  default     = false
}

variable "alb_type" {
  description = "ALB type"
  type        = string
  default     = "application"
}

variable "sg_name" {
  description = "Security group name"
  type        = string
  default     = "my-security-group"
}

variable "sg_description" {
  description = "Security group description"
  type        = string
  default     = "Security group for my infrastructure"
}
