
provider "aws" {
  region     = "us-east-1"
  access_key = "AKIAXGXLFNAIAYJNE627"
  secret_key = "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"
}

module "ec2module"{
  source = "./Modules/EC2/"
}

