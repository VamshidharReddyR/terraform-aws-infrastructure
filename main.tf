resource "aws_security_group" "web_sg" {

  name        = "web-sg"
  description = "Allow SSH and HTTP access"

  ingress {
    description = "SSH"

    from_port   = 22
    to_port     = 22
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  ingress {
    description = "HTTP"

    from_port   = 80
    to_port     = 80
    protocol    = "tcp"

    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {

    from_port   = 0
    to_port     = 0
    protocol    = "-1"

    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "web-security-group"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}

resource "aws_instance" "web_server" {

  ami                    = "ami-0c02fb55956c7d316"
  instance_type          = var.instance_type
  vpc_security_group_ids = [aws_security_group.web_sg.id]

  tags = {
    Name        = "terraform-demo-server"
    Environment = var.environment
    ManagedBy   = "Terraform"
  }
}
