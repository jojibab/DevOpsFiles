provider "aws" {
    region = "us-west-2"
    access_key = "AKIASKTWQ6ZH4CZ6ZUOL"
    secret_key = "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"
  
}

module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 3.0"

  for_each = toset(["one", "two", "three"])

  name = "instance-${each.key}"

  ami                    = "ami-ebd02392"
  instance_type          = "t2.micro"
  key_name               = "user1"
  monitoring             = true
  vpc_security_group_ids = ["sg-12345678"]
  subnet_id              = "subnet-eddcdzz4"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}