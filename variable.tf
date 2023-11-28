variable "rg-name"{
    type = string
    default = "testing1996"
}
variable "vpc-name" {
     type = string
     default = "ashok-vpc"
     
}

variable "subnet-name" {
  type =list(string)
  default = ["ashok-subnet-1a","ashok-subnet-1b"]
}
variable "vpc-cidr"{
    type = list
   default = []
}

variable "subnet-cidr"{
    type = list(string)
   default =[]
}

variable "tags" {
  type = map(any)
  default = {
    Name        = "testing_project"
    Environment = "DEV"
    Terraform   = "true"
  }
}

variable "vpc_tags" {
  type = map
  default = {}
}