resource "aws_vpc" "vpc" {
  cidr_block = "10.0.0.0/16"
  enable_dns_support = true
  enable_dns_hostnames  = true
  tags={
    Name="VPC"
  }

}

resource "aws_subnet" "sub1" {
    vpc_id = aws_vpc.vpc.id
    cidr_block = "10.0.0.0/24"
    tags= {
        Name="sub-1"
    }
}

