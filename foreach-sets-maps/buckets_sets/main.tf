resource "aws_s3_bucket" "my_buckets" {
  for_each = var.bucket_names
  bucket   = each.key
  tags     = each.value
}