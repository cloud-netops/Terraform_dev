provider "aws" {
  region = "ap-southeast-1"
}

resource "aws_instance" "web" {
  ami           = "ami-0c8e97a27be37adfd"
  instance_type = "t2.micro"
  key_name      = "terraform-aws"
  subnet_id     = aws_subnet.main-public-1.id

  # the security group
  vpc_security_group_ids = [aws_security_group.servicesg.id]

  tags = {
    Name = "Tuts test"
  }

}
resource "aws_key_pair" "terraform_key" {
  key_name   = "terraform-aws"
  public_key = file("/home/satya/Desktop/sshkeys/terraform-aws.pub")


}
