data "terraform_remote_state" "dns_backend" {
  
  backend = "s3"

  config = {
    bucket = "terraform-backend-bucket-vishal"
    key    = "global/dns/prod-proj/terraform.tfstate"
    region = "ap-south-1"
  }
  }
