resource "aws_instance" "Tinstance" {
  count = var.instance_count
  ami   = var.AMIS[var.aws_region]
  instance_type = "t2.micro"
  # the VPC subnet
  subnet_id = element(aws_subnet.public.*.id, count.index)
  # the security group
  vpc_security_group_ids = [aws_security_group.servicesg.id]
}


