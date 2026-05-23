resource "aws_security_group" "sg" {
  name        = "${var.project_name}-xx-sg"
  description = "Security group for "
  vpc_id      = 

  ingress {
    description = ""
    from_port   = 
    to_port     = 
    protocol    = ""
    security_groups = [  ]  #Used for Data Servers
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
    Name        = "${var.project_name}-xxx-sg"
    Environment = var.environment
  }
}

