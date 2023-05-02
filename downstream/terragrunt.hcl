include "root" {
  path = find_in_parent_folders()
}

terraform {
  source ="github.com/omerurhan/rke2-terraform.git//rke2-infra?ref=v0.0.8"
}
inputs = {

  region = "eu-central-1"
  environment="downstream"
  client_cidr="178.233.138.61/32"
  vpc_cidr="10.10.0.0/16"
  ami="ami-0968bb84a3c33d0be"
  instance_type="t3a.medium"
  key_name="dev-key"
  tags={
      owner = "kloia"
      environment = "downstream"
  }
  cp_count=3
  worker_count=3
  instance_role = "LokiStorage"
}
