data "terraform_remote_state" "vpc_backend" {
  
  backend = "s3"

  config = {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Network/VPC/dev/Meta-Args/test/terraform.tfstate"
    region = "ap-south-1"
  }
}

data "terraform_remote_state" "tg_backend" {
  backend = "s3"

  config = {

   bucket = "terraform-backend-bucket-vishal"
    key    = "Compute/Target_Group/dev/prod-proj/terraform.tfstate"
    region = "ap-south-1"

  }
}

data "terraform_remote_state" "lt_backend" {
  backend = "s3"

  config = {

   bucket = "terraform-backend-bucket-vishal"
    key    = "Compute/Launch-Template/dev/prod-proj/terraform.tfstate"
    region = "ap-south-1"

  }
}
