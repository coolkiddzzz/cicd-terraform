
terraform {
  backend "s3" {
    bucket = "sctp-ce5-tfstate-bucket-1"
    key    = "wy.tfstate"
    region = "us-east-1"
  }
}

provider "aws" {
  region = "us-east-1"
}

resource "aws_sns_topic" "user_updates" {
  name = "waiyee-sns-test-branch-2"
}


resource "aws_s3_bucket" "new_bucket" {
  bucket = "wy-tf-bucket"

  tags = {
    Name        = "wy-bucket"
  }
}

resource "aws_instance" "wy-webserver1" {
  ami           = "ami-0e9107ed11be76fde"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "subnet-0d647d78d2309afc0"
  vpc_security_group_ids = ["sg-0044a66b4c899960b"]
  tags = {
    Name = "waiyee-webserver"
  }
}

resource "aws_instance" "wy-webserver2" {
  ami           = "ami-0e9107ed11be76fde"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "subnet-0d647d78d2309afc0"
  vpc_security_group_ids = ["sg-0044a66b4c899960b"]
  tags = {
    Name = "waiyee-webserver"
  }
}

resource "aws_instance" "wy-ans" {
  ami           = "ami-0e9107ed11be76fde"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "subnet-0d647d78d2309afc0"
  vpc_security_group_ids = ["sg-0044a66b4c899960b"]
  tags = {
    Name = "waiyee-webserver"
  }
}