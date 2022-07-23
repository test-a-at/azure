variable "ami" {
  type = string
  default = "ami-0cff7528ff583bf9a"
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