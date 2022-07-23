terraform {
  backend "s3" {
    bucket = "devops-course-tf-state"
    key    = "example"
    region = "us-east-1"
  }
}