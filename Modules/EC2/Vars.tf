variable "VPC_Id" {
  default = "vpc-b6ede6cd"
}

variable "Public_Subnets" {
  type = "string"
  default = "subnet-0b917635"
}

variable "Private_Subnets" {
  type = "string"
  default = "subnet-0b917635"
}

variable "EC2_SG" {
  type = "string"
  default = "sg-0da96d57dc459faa5"
}

variable "Key_Name" {
  default = "aws.pem"
}
