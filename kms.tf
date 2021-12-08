//Generate RSA key
resource "tls_private_key" "private_key" {
  algorithm = "RSA"
}

//Save private key file for instance login
resource "local_file" "private_file" {
  filename        = "id_rsa.pem"
  content         = tls_private_key.private_key.private_key_pem
  file_permission = "0400"
}

//Save Public key to KMS
resource "aws_key_pair" "key_pair" {
  key_name   = "aws_key_pair"
  public_key = tls_private_key.private_key.public_key_openssh
  tags = {
    Name = "key_pair"
  }
}
