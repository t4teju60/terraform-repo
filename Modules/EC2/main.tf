resource "aws_instance" "web" {
  ami           = "ami-09d95fab7fff3776c"
  availability_zone = "us-east-1a"
  instance_type = "t2.micro"

  tags = {
    Name = "WordPress_Web"
  }
}
