
data "aws_availability_zones" "available" { state = "available" }
locals { azs = slice(data.aws_availability_zones.available.names, 0, var.az_count) }
module "vpc" {
  source         = "./modules/vpc"
  vpc_cidr       = var.vpc_cidr
  azs            = local.azs
  subnet_newbits = var.subnet_newbits
  tags           = var.tags
}
module "web" {
  source            = "./modules/ec2"
  subnet_id         = module.vpc.public_subnet_ids[0]
  vpc_id            = module.vpc.vpc_id
  allowed_http_cidr = var.allowed_http_cidr
  instance_type     = var.instance_type
  tags              = var.tags
}
