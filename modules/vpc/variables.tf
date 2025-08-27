variable "vpc_cidr" {
  type = string
}

variable "azs" {
  type = list(string)
}

variable "subnet_newbits" {
  type = number
}

variable "tags" {
  type    = map(string)
  default = {}
}
