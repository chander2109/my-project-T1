resource "aws_instance" "instance_1" {
  ami           = var.ch_ami_id
  instance_type = var.ch_instance_type
  key_name      = var.ch_key_name
  subnet_id     = var.ch_subnet_id
  vpc_security_group_ids = [aws_security_group.sg.id]

  root_block_device {
    volume_size = var.ch_storage_size
    volume_type = var.ch_storage_type
   tags = {
      Name = "var.ch_security_name"
    }
  }
  tags = {
    Name = "Terraform15jul-EC2"
  }
}

