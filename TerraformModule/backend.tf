terraform {
  backend "s3" {
    bucket = "r2sclass-terraforms3backend"
    key    = "modulebackend"
    region = "ap-southeast-1"
  }
}