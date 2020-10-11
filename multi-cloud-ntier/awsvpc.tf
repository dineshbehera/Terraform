
## AWS VPC Section
resource "aws_vpc" "my-vpc" {
  #cidr_block            = "192.168.0.0/16"
  cidr_block            = var.vpc_cidr
  enable_dns_support    = true

  tags = {
   # Name = "vpc-from-teraform"
   Name = var.vpc_tag
  }
}  

## AWS Subnet Section - Web
resource "aws_subnet" "my-web-subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  # cidr_block        = "192.168.0.0/24"
  cidr_block        = cidrsubnet(var.vpc_cidr,8,0)
  #availability_zone = "us-east-2a"
  #availability_zone = format("%sa",var.region)
  availability_zone = format("%s%s",var.region,var.availability_zones[0])

  tags = {
    #Name = "web"
    Name = var.subnet_tags[0]

  }
}


## AWS Subnet Section - app
resource "aws_subnet" "my-app-subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  #cidr_block        = "192.168.1.0/24"
  cidr_block        = cidrsubnet(var.vpc_cidr,8,1)
  #availability_zone = "us-east-2b"
  #availability_zone = format("%sb",var.region)
  availability_zone = format("%s%s",var.region,var.availability_zones[1])


  tags = {
    #Name = "app"
    Name = var.subnet_tags[1]
  }
}


## AWS Subnet Section - db
resource "aws_subnet" "my-db-subnet" {
  vpc_id            = aws_vpc.my-vpc.id
  #cidr_block        = "192.168.2.0/24"
  cidr_block        = cidrsubnet(var.vpc_cidr,8,2)
  #availability_zone = "us-east-2c"
  #availability_zone = format("%sc",var.region)
  availability_zone = format("%s%s",var.region,var.availability_zones[2])

  tags = {
    #Name = "db"
    Name = var.subnet_tags[2]

  }
}

## AWS Subnet Section - mgmt
resource "aws_subnet" "my-mgmt-subnet" {
  vpc_id     = aws_vpc.my-vpc.id
  #cidr_block = "192.168.3.0/24"
  cidr_block        = cidrsubnet(var.vpc_cidr,8,3)
  #availability_zone = "us-east-2a"
  #availability_zone = format("%sa",var.region)
  availability_zone = format("%s%s",var.region,var.availability_zones[3])

  tags = {
    #Name = "mgmt"
    Name = var.subnet_tags[3]

  }
}