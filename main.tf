module "vpc" {
  source      = "git ::https://github.com/gangisettymanikumar79-oss/vpc-test.git"? ref=main # <-- correct path
  project     = "roboshop"
  environment = "dev"
  is_peering_required = true

}