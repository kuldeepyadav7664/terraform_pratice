resource "aws_db_instance" "this" {
  allocated_storage    = var.allocated_storage
  engine               = var.engine
  instance_class       = var.instance_class
  db_name                 = var.db_name
  username             = var.username
  password             = var.password
  skip_final_snapshot  = true
  
}