resource "aws_instance" "aasec2" {
  ami                         = "ami-024e6efaf93d85776"
  instance_type               = "t2.micro"
  key_name                    = "Aasai2Ohio"
  associate_public_ip_address = true

  tags = {
    Name = "Aasai"
  }
}
