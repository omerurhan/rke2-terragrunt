include "root" {
  path = find_in_parent_folders()
}

terraform {
  source ="github.com/omerurhan/rke2-terraform.git//rke2-infra?ref=v0.0.8"
}
inputs = {

  region = "eu-central-1"
  environment="upstream"
  client_cidr="178.233.138.61/32"
  vpc_cidr="10.0.0.0/16"
  ami="ami-0968bb84a3c33d0be"
  instance_type="c4.xlarge"
  key_name="dev-key"
  tags={
      owner = "kloia"
      environment = "dev"
  }
  cp_count=1
  worker_count=2
  instance_role = "LokiStorage"
}