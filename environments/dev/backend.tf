terraform {
  backend "s3" {
    bucket       = "secure-modular-terraform-state-375336688989"
    key          = "dev/terraform.tfstate"
    region       = "ap-south-1"
    encrypt      = true
    use_lockfile = true
  }
}