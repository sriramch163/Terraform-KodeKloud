resource "aws_s3_bucket" "nautilus_bucket" {
  bucket = "nautilus-s3-1747-t4q1"

  tags = {
    Name = "nautilus-s3-1747-t4q1"
  }
}


resource "aws_s3_bucket_public_access_block" "nautilus_bucket_block" {
  bucket                  = aws_s3_bucket.nautilus_bucket.id
  block_public_acls       = true
  block_public_policy     = true
  ignore_public_acls      = true
  restrict_public_buckets = true
}


resource "aws_s3_bucket_acl" "nautilus_bucket_acl" {
  bucket = aws_s3_bucket.nautilus_bucket.id
  acl    = "private"
}

