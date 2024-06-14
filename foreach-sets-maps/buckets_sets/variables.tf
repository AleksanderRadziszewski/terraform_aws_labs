variable "bucket_names" {
  description = "Map of bucket names and their tags"
  type        = map(map(string))
  default = {
    "dor12-aleksander-radziszewski-my-first-bucket"  = { "Environment" = "Dev", "Project" = "Project1" },
    "dor12-aleksander-radziszewski-my-second-bucket" = { "Environment" = "Test", "Project" = "Project2" },
    "dor12-aleksander-radziszewski-my-third-bucket"  = { "Environment" = "Prod", "Project" = "Project3" }
  }
}