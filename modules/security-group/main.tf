resource "aws_security_group" "web_sg" {

  name        = "${var.environment}-web-sg"
  description = "Security group for EC2 instances"
  vpc_id      = var.vpc_id

  tags = {
    Name        = "${var.environment}-web-sg"
    Environment = var.environment
  }
}

resource "aws_vpc_security_group_ingress_rule" "ssh" {

  security_group_id = aws_security_group.web_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 22
  to_port     = 22
  ip_protocol = "tcp"

  description = "Allow SSH access"
}

resource "aws_vpc_security_group_ingress_rule" "http" {

  security_group_id = aws_security_group.web_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  from_port   = 80
  to_port     = 80
  ip_protocol = "tcp"

  description = "Allow HTTP access"
}

resource "aws_vpc_security_group_egress_rule" "all" {

  security_group_id = aws_security_group.web_sg.id

  cidr_ipv4   = "0.0.0.0/0"
  ip_protocol = "-1"

  description = "Allow all outbound traffic"
}

