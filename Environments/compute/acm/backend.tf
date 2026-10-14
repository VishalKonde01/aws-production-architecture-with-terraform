terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Compute/acm/global/prod-proj/terraform.tfstate"
    region = "ap-south-1"
  }
}