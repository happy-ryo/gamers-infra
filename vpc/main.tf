provider "aws" {
  region = "ap-northeast-1"
}

resource "aws_vpc" "gamers" {
  cidr_block = "10.0.0.0/16"

  tags = {
    Name = "vpc-gamers"
  }
}

resource "aws_subnet" "gamers" {
  vpc_id = aws_vpc.gamers.id

  cidr_block = "10.0.1.0/24"
}

