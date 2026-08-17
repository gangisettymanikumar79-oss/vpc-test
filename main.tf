module "vpc" {
  source      = "../terraform-aws-vpc" # <-- correct path
  project     = "roboshop"
  environment = "dev"
  is_peering_required = true

}