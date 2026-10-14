terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "global/dns/prod-proj/terraform.tfstate"
    region = "ap-south-1"
  }
}