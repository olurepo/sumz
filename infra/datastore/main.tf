# import {
#   to = aws_s3_bucket.sumz_bucket
#   id = "sumz-bucket"
# }


resource "aws_s3_bucket" "sumz_bucket" {
  bucket = "sumz-bucket"

  tags = {
    Name = "sumz-bucket"
    env = "dev"
  }
}

resource "aws_s3_bucket_ownership_controls" "bucket_controls" {
  bucket = aws_s3_bucket.sumz_bucket.id
  rule {
    object_ownership = "BucketOwnerPreferred"
  }
}

# resource "aws_s3_bucket_acl" "bucket_acl" {
#   depends_on = [aws_s3_bucket_ownership_controls.bucket_controls]

#   bucket = aws_s3_bucket.sumz_bucket.id
#   acl    = "private"
# }
