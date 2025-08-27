variable "region" {
  type    = string
  default = "ca-central-1"
}

variable "vpc_cidr" {
  type    = string
  default = "10.0.0.0/16"
}

variable "az_count" {
  type    = number
  default = 3
}

variable "subnet_newbits" {
  type    = number
  default = 4
}

variable "instance_type" {
  type    = string
  default = "t3.micro"
}

variable "allowed_http_cidr" {
  type    = string
  default = "0.0.0.0/0"
}

variable "tags" {
  type    = map(string)
  default = { Project = "tf-iac-challenge" }
}
