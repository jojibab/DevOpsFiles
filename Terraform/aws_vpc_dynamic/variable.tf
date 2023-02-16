variable "region" {
    type = string
    default = "uds-west-2"
    description = "Enter region code like 'us-west-2'" 
}

variable "access_key" {
    type = string
    default = "AKIASKTWQ6ZH4CZ6ZUOL"
    description = "Enter you access_key"  
}

variable "secret_key" {
    type = string
    default = "ONhwR7LWq1O3oNXaucCn4/6vBBV2pC6S3ZXxoFsU"
    description = "Enter your secret_key"
  
}

variable "cidr_range" {
    type = string
    default = "192.168.0.0/16"
    description = "Enter CIDR_Range like 192.168.0.0/16"
}

variable "subnet_names" {
    type = list
    default = [ "web1", "web2", "db1" ]
    description = "Enter your subnet_names_tags"
  
}

variable "availability_zone" {
    type = list
    default = [ "us-west-2a", "us-west-2c", "us-west-2b" ] 
}

