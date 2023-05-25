provider "aws" {
  region = "us-east-1"
}

resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "${var.env}-vpc-${var.name}"
  }
}


resource "aws_instance" "condition" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  tags = {
    Name = "${var.env}-ec2-${var.name}"
  }
}

resource "aws_instance" "second" {
  ami           = data.aws_ami.amazon_linux.id
  instance_type = "t3.micro"

  tags = {
    Name = "${var.env}-ec2-${var.name}"
  }
}

variable "env" {

}

variable "name" {

}
