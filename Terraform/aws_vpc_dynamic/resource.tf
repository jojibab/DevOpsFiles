resource "aws_vpc" "my_vpc" {
    cidr_block = var.cidr_range

    tags = {
      "Name" = "Terraform"
    }
}

resource "aws_subnet" "subnet1" {
    count = length(var.subnet_names)
    vpc_id = aws_vpc.my_vpc.id
    cidr_block = "192.168.${count.index}.0/24"
    availability_zone = var.availability_zone[count.index]
    
    tags = {
      "Name" = var.subnet_names[count.index]
    }
    depends_on = [
      aws_vpc.my_vpc
    ]
}
