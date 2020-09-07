resource "aws_s3_bucket" "this" {
  count 	= var.create_bucket ? 1 : 0
  bucket 	= var.bucket_name
  acl   	= var.bucket_acl
  tags 		= var.bucket_tags
}

resource "aws_s3_bucket_public_access_block" "this" {
  count 	= var.block_public_access ? 1 : 0
  bucket 	= aws_s3_bucket.this[0].id

  block_public_acls   = true
  block_public_policy = true
}
