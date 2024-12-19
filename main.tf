provider "aws" {
  region = "ap-south-1"  # Change to your preferred region
}

resource "aws_s3_bucket" "static_website" {
  bucket = "yours-unique-bucket"  # Change to a unique bucket name

  website {
    index_document = "index.html"
    error_document = "error.html"
  }
}

resource "aws_s3_bucket_object" "index" {
  bucket = aws_s3_bucket.static_website.bucket
  key    = "index.html"
  source = "index.html"  # Path to your index.html file
}

resource "aws_s3_bucket_object" "error" {
  bucket = aws_s3_bucket.static_website.bucket
  key    = "error.html"
  source = "error.html"  # Path to your error.html file
}

output "website_url" {
  value = aws_s3_bucket.static_website.website_endpoint
}
