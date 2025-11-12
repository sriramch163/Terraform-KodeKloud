resource "aws_s3_bucket" "nautilus_bucket" {
  bucket = "nautilus-s3-1747-t4q2"

  tags = {
    Name = "nautilus-s3-1747-t4q2"
  }
}


resource "aws_s3_bucket_acl" "nautilus_bucket_acl" {
  bucket = aws_s3_bucket.nautilus_bucket.id
  acl    = "public-read"
}


resource "aws_s3_bucket_public_access_block" "nautilus_bucket_public_access" {
  bucket                  = aws_s3_bucket.nautilus_bucket.id
  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}

output "bucket_name" {
  value = aws_s3_bucket.nautilus_bucket.bucket
}
