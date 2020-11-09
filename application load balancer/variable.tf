variable "aws_region" {
	default = "ap-south-1"
}

variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-02afca7d904a7c938"
    us-west-2  = "ami-06b94666"
    eu-west-1  = "ami-844e0bf7"
  }
}
variable "vpc_cidr" {
	default = "10.20.0.0/16"
}

variable "subnets_cidr" {
	type = list
	default = ["10.20.1.0/24", "10.20.2.0/24"]
}

variable "azs" {
	type = list
	default = ["ap-south-1a", "ap-south-1b"]
}

variable "instance_count" {
  default = "2"
}


