variable "ami" {
  type = string
  default = "ami-830c94e3"
  description = "AMI for our EC2 Instance"
}

variable "instance_type" {
  type = string
  default = "t2.micro"
  description = "EC2 Instance Type"
}

variable "ec2_name" {
    type = string
    default = "example"
    description = "EC2 Instance Name Tag"
}