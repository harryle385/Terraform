provider "aws" {
  region     = var.region
}

resource "aws_instance" "ec2" {
  ami           = var.AMIasREGION[var.region]
  instance_type = var.InsType
}
