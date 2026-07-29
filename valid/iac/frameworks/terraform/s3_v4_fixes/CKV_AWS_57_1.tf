resource "aws_s3_bucket" "bad_bucket" {
  bucket = "bad_bucket"
}

resource "aws_s3_bucket" "bad_bucket_log_bucket" {
  bucket = "bad_bucket-log-bucket"
}

resource "aws_s3_bucket_logging" "bad_bucket" {
  bucket = aws_s3_bucket.bad_bucket.id

  target_bucket = aws_s3_bucket.bad_bucket_log_bucket.id
  target_prefix = "log/"
}

resource "aws_s3_bucket_acl" "bad_acl" {
  bucket = aws_s3_bucket.bad_bucket.id
  acl    = "public-read-write"
}