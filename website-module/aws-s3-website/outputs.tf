output "bucket_name" {
  description = "The name of the S3 bucket."
  value       = aws_s3_bucket.website_bucket.bucket
}

output "website_url" {
  value = "http://${aws_s3_bucket.website_bucket.bucket}.s3-website-${var.aws_region}.amazonaws.com"
}