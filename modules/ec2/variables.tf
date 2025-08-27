variable "subnet_id" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "allowed_http_cidr" {
  type = string
}

variable "instance_type" {
  type = string
}

variable "tags" {
  type    = map(string)
  default = {}
}
