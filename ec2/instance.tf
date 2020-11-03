resource "aws_instance" "Tinstance" {
   ami = var.AMIS[var.aws_region]
   #ami = ami-02afca7d904a7c938
   instance_type = "t2.micro"

  # the VPC subnet
  subnet_id = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.servicesg.id]

  
}

