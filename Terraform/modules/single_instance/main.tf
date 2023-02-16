provider "aws" {
    region = "us-east-1"
    access_key = "AKIASKTWQ6ZH4CZ6ZUOL"
    secret_key = "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"
  
}
module "ec2_instance" {
  source  = "terraform-aws-modules/ec2-instance/aws"
  version = "~> 4.0"

  name = "single-instance"

  ami                    = "ami-00874d747dde814fa" 
  instance_type          = "t2.micro"
  key_name               = "my_id_rsa"
  monitoring             = true
  vpc_security_group_ids = [ "sg-0bd17ab8ddf974308" ]
  subnet_id              = "subnet-0c52fafe03cfddcc1"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

