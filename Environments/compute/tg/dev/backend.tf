terraform {
  backend "s3" {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Compute/Target_Group/dev/prod-proj/terraform.tfstate"
    region = "ap-south-1"
  }
}