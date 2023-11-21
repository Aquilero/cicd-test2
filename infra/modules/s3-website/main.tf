resource "aws_s3_bucket" "this" {
  bucket = var.bucket_name

  tags = {
    Name      = "UE139"
    Terraform = "True"
  }
}

resource "aws_s3_bucket_website_configuration" "this" {
  bucket = aws_s3_bucket.this.id

  index_document {
    suffix = "index.html"
  }

  error_document {
    key = "error.html"
  }

}

resource "aws_s3_bucket_public_access_block" "this" {
  bucket = aws_s3_bucket.this.id

  block_public_acls       = false
  block_public_policy     = false
  ignore_public_acls      = false
  restrict_public_buckets = false
}


# resource "aws_s3_bucket" "name" {
  
# }
# {
#   "Version": "2012-10-17",
#   "Statement": [
#     {
#       "Effect": "Allow",
#       "Principal": "*",
#       "Action": "s3:*",
#       "Resource": [
#         "arn:aws:s3:::my-website-bucket-fabio--23112023/*",
#         "arn:aws:s3:::my-website-bucket-fabio--23112023"
#       ]
#     }
#   ]
# }