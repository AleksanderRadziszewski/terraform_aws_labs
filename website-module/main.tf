module "s3_website" {
  source = "./aws-s3-website" # Adjust the path based on where your module is located
  bucket_name = "dor12--website-bucket"
  index_document = "index.html"
  error_document = "error.html"
  make_public   = true
}

resource "aws_s3_object" "index" {
  bucket = module.s3_website.bucket_name  # Ensure this matches the bucket's name in your module
  key    = "index.html"
  source = "./index.html"
  content_type = "text/html"
}

output "website_bucket_name" {
  value = module.s3_website.bucket_name
}

output "website_url" {
  value = module.s3_website.website_url
}