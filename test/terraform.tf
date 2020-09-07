provider "aws" {
  region 	= "eu-west-1"
}

module "s3_bucket" {
  source	= "../s3_module"

  bucket_name	= "ljakimczuk-test"
}
