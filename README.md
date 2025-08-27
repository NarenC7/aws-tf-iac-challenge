# Terraform AWS VPC + EC2 (no comments in .tf)
Creates a VPC (10.0.0.0/16) with 3 public + 3 private subnets across 3 AZs, IGW, per-AZ NAT, and one EC2 in a public subnet reachable on TCP/80 by IP. Parameterized variables; no third-party modules; no comments.

## Run
```bash
terraform init
terraform plan -out tf.plan
terraform apply tf.plan
