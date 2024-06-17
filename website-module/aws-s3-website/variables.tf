variable "bucket_name" {
  description = "The name of the S3 bucket to be created for website hosting."
  type        = string
}

variable "index_document" {
  description = "The index document of the S3 website."
  type        = string
  default     = "index.html"
}

variable "error_document" {
  description = "The error document of the S3 website."
  type        = string
  default     = "error.html"
}

variable "make_public" {
  description = "Indicates whether the bucket should be public."
  type        = bool
  default     = true
}

variable "aws_region" {
  description = "Region for resources"
  type        = string
  default     = "eu-west-1"
}