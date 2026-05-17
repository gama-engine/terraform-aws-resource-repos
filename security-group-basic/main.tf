resource "aws_security_group" "sg" {
  name        = "${var.project_name}-web-sg"
  description = "Security group for "
  vpc_id      = 

  ingress {
    description = ""
    from_port   = 
    to_port     = 
    protocol    = ""
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    description = ""
    from_port   = 
    to_port     = 
    protocol    = ""
    cidr_blocks = ["0.0.0.0/0"]
  }

  tags = {
    Name        = "${var.project_name}-web-sg"
    Environment = var.environment
  }
}