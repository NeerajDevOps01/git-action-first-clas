provider "aws" {
  
}

resource "aws_vpc" "name" {
    cidr_block = "10.0.0.0/16"
    tags={
        Name = my_vpc  
    }
  
}

resource "aws_subnet" "dev"{
    cidr_block = "10.0.0.0/24"
   vpc_id = "aws_vpc.name.id"
    tags = {
        Name = "my_subnet"
    }
}