# __generated__ by Terraform
# Please review these resources and move them into your main configuration files.

# __generated__ by Terraform from "dor12-aleksander-radziszewski"
resource "aws_dynamodb_table" "table" {
  billing_mode                = "PROVISIONED"
  deletion_protection_enabled = false
  hash_key                    = "test"
  name                        = "dor12-aleksander-radziszewski"
  range_key                   = null
  read_capacity               = 5
  restore_date_time           = null
  restore_source_name         = null
  restore_to_latest_time      = null
  stream_enabled              = false
  stream_view_type            = null
  table_class                 = "STANDARD"
  tags = {
    Name = "test_new"
  }
  tags_all = {
    Name = "test_new"
  }
  write_capacity = 5
  attribute {
    name = "test"
    type = "S"
  }
  point_in_time_recovery {
    enabled = false
  }
  ttl {
    attribute_name = ""
    enabled        = false
  }
}
