resource "aws_db_instance" "my-test-sql" {
  instance_class          = "db.t2.micro"
  engine                  = "mysql"
  engine_version          = "8.0"
  multi_az                = true
  storage_type            = "gp2"
  allocated_storage       = 20
  name                    = "mytestrds"
  username                = "admin"
  password                = "admin123"
  apply_immediately       = "true"
  backup_retention_period = 10
  backup_window           = "09:46-10:16"
  db_subnet_group_name    =  aws_db_subnet_group.my-rds-db-subnet.id
 # vpc_security_group_ids  =  aws_security_group.my-rds-sg.id
}
