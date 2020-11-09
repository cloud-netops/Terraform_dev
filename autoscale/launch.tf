resource "aws_launch_configuration" "launch" {
  image_id               = var.AMIS[var.aws_region]
  instance_type          = "t2.micro"
  security_groups        = [aws_security_group.servicesg.id]
 # key_name               = "${var.key_name}"
  user_data = <<-EOF
               #!/bin/bash
              sudo apt update
              sudo apt-get -y install nginx
              sudo service nginx start
              EOF
  lifecycle {
    create_before_destroy = true
  }
}


