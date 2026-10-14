data "terraform_remote_state" "vpc_backend" {
  
  backend = "s3"

  config = {
    bucket = "terraform-backend-bucket-vishal"
    key    = "Network/VPC/dev/Meta-Args/test/terraform.tfstate"
    region = "ap-south-1"
  }
}


data "terraform_remote_state" "acm_backend" {
  backend = "s3"

  config = {
bucket = "terraform-backend-bucket-vishal"
    key    = "Compute/acm/global/prod-proj/terraform.tfstate"
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

data "terraform_remote_state" "dns_backend" {
  
  backend = "s3"

  config = {
    bucket = "terraform-backend-bucket-vishal"
    key    = "global/dns/prod-proj/terraform.tfstate"
    region = "ap-south-1"
  }
  }


# data "terraform_remote_state" "alb_backend" {
#   backend = "s3"

#   config = {

#    bucket = "terraform-backend-bucket-vishal"
#     key    = "Compute/ALB/dev/prod-proj/terraform.tfstate"
#     region = "ap-south-1"

#   }
# }