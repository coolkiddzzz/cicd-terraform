
resource "aws_sns_topic" "user_updates" {
  name = var.sns
}

// Creating aws s3 bucket
resource "aws_s3_bucket" "new_bucket" {
  bucket = "wy-tf-bucket"

  tags = {
    Name = "wy-bucket"
  }
}
 
// For ansible: Creating aws ec2 1
resource "aws_instance" "webserver-1" {
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

// For ansible: Creating aws ec2 2
resource "aws_instance" "webserver-2" {
  ami           = "ami-0e9107ed11be76fde"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = var.subnet_id
  vpc_security_group_ids =  var.vpc_security_group_ids
  key_name = var.key_name
  tags = {
    Name = "waiyee-webserver2"
  }
}

// For ansible: Creating aws ec2 ansible
resource "aws_instance" "webserver-ansible" {
  ami           = "ami-0e9107ed11be76fde"
  instance_type = "t2.micro"
  associate_public_ip_address = "true"
  subnet_id = var.subnet_id
  vpc_security_group_ids =  var.vpc_security_group_ids
  key_name = var.key_name
  tags = {
    Name = "waiyee-webserver-ansible"
  }
}