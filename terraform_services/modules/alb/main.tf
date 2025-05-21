resource "aws_lb" "this" {
  name               = var.name
  internal           = var.internal
  load_balancer_type = var.load_balancer_type
  subnets            = var.subnets
}