
variable "aws_region" {
   default     = "ap-south-1"
   description = "Region of the VPC"
}
variable "AMIS" {
  type = map(string)
  default = {
    ap-south-1 = "ami-02afca7d904a7c938"
    us-west-2 = "ami-06b94666"
    eu-west-1 = "ami-844e0bf7"
  }
  }
