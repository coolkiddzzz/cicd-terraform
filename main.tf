locals {
  topic-name = "mwaiyee-update-topic"
}


/* 

// Creating sns topic
resource "aws_sns_topic" "user_updates" {
  name = "${local.topic-name}-${var.env}"
}
 
// Creating aws s3 bucket
resource "aws_s3_bucket" "new_bucket" {
  bucket = "wy-tf-bucket"

  tags = {
    Name = "wy-bucket"
  }
}

*/ 

// Creating EC2
resource "aws_instance" "webserver-1" {
  ami           = var.aws_ami
  instance_type = var.aws_instance_type
  associate_public_ip_address = "true"
  subnet_id = var.subnet_id
  vpc_security_group_ids =  var.vpc_security_group_ids
  key_name = var.key_name
  tags = {
    Name = "${var.bucket_name}-webserver1"
  }

}
