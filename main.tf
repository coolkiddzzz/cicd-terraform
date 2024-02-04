
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

resource "tls_private_key" "coolkidz-key-test" {
  algorithm   = "ECDSA"
  ecdsa_curve = "P384"
}


resource "aws_instance" "webserver" {
  ami           = "ami-0e9107ed11be76fde"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = "subnet-0d647d78d2309afc0"
  vpc_security_group_ids =  ["sg-035b6442f9f859979"]
  key_name = 'coolkidz-key-test'
  tags = {
    Name = "waiyee-webserver1"
  }
}
