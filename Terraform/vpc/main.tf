provider "aws" {
    region = "us-west-2"
    access_key = "AKIASKTWQ6ZH4CZ6ZUOL"
    secret_key = "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"
  
}

resource "aws_vpc" "my_vpc" {
    cidr_block = "192.168.0.0/16"
    instance_tenancy = "default"

    tags = {
      "Name" = "my_vpc"
    }
  
}