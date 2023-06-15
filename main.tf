provider "aws" {
  region = "us-east-1"
}

resource "aws_instance" "example" {
  ami           = "ami-053b0d53c279acc90"
  instance_type = "t2.micro"
  count         = 2

  tags = {
    Name = "nginx-server-${count.index}"
  }
}
