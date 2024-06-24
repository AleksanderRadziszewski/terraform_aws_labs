variable "instance_names" {
  description = "Names of the instances."
  type        = set(string)
}

variable "instance_type" {
  description = "Type of instance"
  type        = string
  default     = "index.html"
}

variable "key_name" {
  description = "The key name of ec2 instance"
  type        = string
}

variable "tags" {
  description = "Tags for ec2 instance"
  type        = map(string)
}
