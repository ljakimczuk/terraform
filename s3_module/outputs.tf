output "this_s3_bucket_id" {
	description 	= "ID of the bucket"
	value		= aws_s3_bucket.this.0.id
}
