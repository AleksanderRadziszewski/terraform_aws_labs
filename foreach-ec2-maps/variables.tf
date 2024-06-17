variable "instance_names" {
  description = "Map of instance names and their tags"
  type        = list(string)
  default = ["dor12-aleksander-radziszewski-my-first-instance","dor12-aleksander-radziszewski-my-second-instance", "dor12-aleksander-radziszewski-my-third-instance"]
}