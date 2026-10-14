data "terraform_remote_state" "vpc_backend" {

  backend = "s3"

  config = {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Network/VPC/dev/Meta-Args/test/terraform.tfstate"
    region = "ap-south-1"
  }
}