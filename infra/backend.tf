terraform {
  backend "s3" {
    bucket = "eduardo-network-terraform-state"
    key    = "terraform.tfstate"
    region = "us-east-1"
  }
}
