terraform {
  backend "s3" {
    bucket = "r2sclass-terraforms3backend"
    key    = "terraformbackend"
    region = "ap-southeast-1"
  }
}
