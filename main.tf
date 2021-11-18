terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 3.27"
    }
  }

  required_version = ">= 0.14.9"
}

provider "aws" {
  profile = "default"
  region  = "us-east-1"
}

resource "aws_instance" "web_server" {
  ami             = "ami-04ad2567c9e3d7893"
  instance_type   = "t3.medium"

  tags = {
    Name        = "ExampleAppWebInstance"
    Environment = "test"
    Owner       = "Erin Pronobis"
    Application = "Apache Server"
  }
}

