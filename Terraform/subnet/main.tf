provider "aws" {
    region = "us-west-2"
    access_key = "AKIASKTWQ6ZH4CZ6ZUOL"
    secret_key = "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"
}

resource "aws_vpc" "my_vpc" {
    cidr_block = "192.168.0.0/16"

    tags = {
      "Name" = "fmtf"
    }
}

resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "192.168.0.0/24"
    
    tags = {
      "Name" = "subnet1"
    }
}

resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "192.168.1.0/24"
    
    tags = {
      "Name" = "subnet2"
    }
}