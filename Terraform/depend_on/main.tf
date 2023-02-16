provider "aws" {
    region = "us-west-2"
    access_key = "AKIASKTWQ6ZH4CZ6ZUOL"
    secret_key = "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"
}

resource "aws_vpc" "my_vpc" {
    cidr_block = "10.10.0.0/16"

    tags = {
      "Name" = "fmtf"
    }
}

resource "aws_subnet" "subnet1" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.10.0.0/24"
    
    tags = {
      "Name" = "subnet1"
    }

    depends_on = [
      aws_vpc.my_vpc
    ]
}

resource "aws_subnet" "subnet2" {
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "10.101.0/24"
    
    tags = {
      "Name" = "subnet2"
    }

    depends_on = [
      aws_subnet.subnet1
    ]
}