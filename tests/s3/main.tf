provider "aws" {
  region                      = "eu-west-1"
  
  access_key                  = "fake-access-key"
  secret_key                  = "fake-secret-key"
  
  skip_credentials_validation = true
  skip_requesting_account_id  = true
  skip_metadata_api_check     = true

  s3_force_path_style         = true

  endpoints {
    s3 = "http://localstack:4566"
  }
}

module "s3_bucket" {
  source	    = "../../s3_module"
  bucket_name	= "ljakimczuk-test"
}
