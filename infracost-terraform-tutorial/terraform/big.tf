provider "aws" {
  region = "us-west-2"
}

resource "aws_instance" "big_server" {
  ami           = "ami-0c55b159cbfafe1f0" # Amazon Linux 2 AMI
  instance_type = "m5.large"
}
