resource "aws_db_subnet_group" "my-rds-db-subnet" {
  name       = "my-rds-db-subnet"
  subnet_ids = [aws_subnet.main-private-1.id, aws_subnet.main-private-2.id]
}
