resource "aws_s3_object" "object" {
  bucket = data.terraform_remote_state.bucket.outputs.bucket_id
  key    = "example"
  source = "./example.txt"
  etag   = filemd5("./example.txt")
}
