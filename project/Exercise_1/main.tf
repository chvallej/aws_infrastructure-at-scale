# TODO: Designate a cloud provider, region, and credentials
provider "aws" {
  access_key  = "AKIAYKHAO26O4RMS5BFJ"
  secret_key  = "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"
  region = "us-east-1"
}


# TODO: provision 4 AWS t2.micro EC2 instances named Udacity T2
resource "aws_instance" "Udacity_T2" {
  key_name = "udacity"
  count = "4"
  ami = "ami-04ad2567c9e3d7893"
  instance_type = "t2.micro"
  subnet_id     = "subnet-043a07a8c649451bd"
  tags = {
    Name = "Udacity T2"
  }
}


# TODO: provision 2 m4.large EC2 instances named Udacity M4

resource "aws_instance" "Udacity_M4" {
  key_name = "udacity"
  count = "2"
  ami = "ami-04ad2567c9e3d7893"
  instance_type = "m4.large"
  subnet_id     = "subnet-043a07a8c649451bd"
  tags = {
    Name = "Udacity M4"
  }
}