variable "create_bucket" {
	description 	= "Do you want to create the S3 bucket?"
	type 		= bool
	default		= true
}

variable "bucket_name" {
	description	= "Bucket name."
	type		= string
	default		= null
}

variable "bucket_acl" {
	description	= "Bucket ACL."
	type		= string
 	default		= "private"
}

variable "bucket_tags" {
	description	= "Tags map."
	type		= map(string)
	default		= {}
}

variable "block_public_access" {
	description	= "Do you want to block S3 public access?"
	type		= bool
	default		= true
}
