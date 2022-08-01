provider "aws" {
  region     = var.REGION
}
resource "aws_instance" "testterra" {
  # provisioner "local-exec" {
  #   command = "/bin/sh web.sh"
  # }
  ami           = var.AMIasREGION[var.REGION]
  instance_type = "t2.micro"
  security_groups = ["allow_web"]
  tags = {
    Name    = "Test Terraform"
    Project = "Test"
  }
  # user_data = <<EOF
  #   #!/bin/sh
  #   sudo apt-get update -y
  #   sudo apt-get install -y apache2
  #   sudo ufw allow -y 'Apache'
  #   sudo systemctl start apache2
  #   sudo systemctl enable apache2
  # EOF
  user_data = "${file("web.sh")}"
}
resource "aws_security_group" "allow_web" {
  name = "allow_web"
    description = "Allow Website traffic via Terraform"
    ingress {
      from_port   = 80
      to_port     = 80
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
      from_port   = 443
      to_port     = 443
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    ingress {
      from_port   = 22
      to_port     = 22
      protocol    = "tcp"
      cidr_blocks = ["0.0.0.0/0"]
    }
    egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}



