# terraform {
#   backend "s3" {
#     bucket         = "pbl-test-19"
#     key            = "global/s3/terraform.tfstate"
#     region         = "eu-west-2"
#     dynamodb_table = "terraform-locks"
#     encrypt        = true
#   }
# }

terraform {
  backend "remote" {
    organization = "mintedtech"

    workspaces {
      name = "terraform-cloud"
    }
  }
}