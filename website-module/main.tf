module "s3_website" {
  source = "./aws-s3-website"
  bucket_name = "dor12-aleksander-radziszewski-website-bucket"
  index_document = "index.html"
  error_document = "error.html"
  make_public   = true
}

resource "aws_s3_object" "index" {
  bucket = module.s3_website.bucket_name
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