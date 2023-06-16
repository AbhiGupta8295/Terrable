provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  count         = 2
  key_name = "tfServer"
  vpc_security_group_ids = [ "sg-0454b7e51120799e6" ]

  tags = {
    Name = "nginx-server-${count.index}"
  }
}
output "instance_ips" {
  value = aws_instance.example[*].public_ip
}
