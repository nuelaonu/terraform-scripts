resource "aws_instance" "ec2_public" {
  count           = var.instance_count
  ami             = var.ami
  instance_type   = var.instance_type
  subnet_id       = aws_subnet.public_subnet[count.index].id
  security_groups = [aws_security_group.allow-http-tcp.id]
  key_name        = aws_key_pair.key_pair.key_name
  tags = {
    Name = "Ec2Instance${count.index+1}"
  }
  lifecycle { ignore_changes = [security_groups] }
}