resource "random_password" " " {
  length           = 16
  special          = true
  override_special = "!#$%&*()-_=+[]{}<>:?"
}

resource "random_id" "suffix" {
  byte_length = 4
}

resource "aws_secretsmanager_secret" " " {
  name        = "${}-${}-db-password-${random_id.suffix.hex}"
  description = "Database password for ${}"

  tags = {
    Name        = "${}-db-password"
    Environment = "${}"
  }
}

resource "aws_secretsmanager_secret_version" " " {
  secret_id = 
  secret_string = jsonencode({
    username = 
    password = 
    engine   = ""
    host     = "" # Will be populated by application or looked up
  })
}