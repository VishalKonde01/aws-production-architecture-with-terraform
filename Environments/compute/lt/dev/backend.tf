terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Compute/Launch-Template/dev/prod-proj/terraform.tfstate"
    region = "ap-south-1"
  }
}