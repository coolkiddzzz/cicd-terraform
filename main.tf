
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

resource "aws_key_pair" "deployer" {
  key_name   = "deployer-key"
  public_key = var.public_key
}


resource "aws_instance" "webserver" {
  ami           = "ami-0e9107ed11be76fde"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = var.subnet_id
  vpc_security_group_ids =  var.vpc_security_group_ids
  key_name = var.key_name
  tags = {
    Name = "waiyee-webserver1"
  }
}
