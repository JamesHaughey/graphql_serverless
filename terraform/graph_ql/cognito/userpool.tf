resource "aws_cognito_user_pool" "pool" {
  name                       = "${var.namespace}"
  email_verification_subject = "Device Verification Code"
  email_verification_message = "Please use the following code {####}"
  auto_verified_attributes   = ["email"]

  alias_attributes = [
    "preferred_username"
  ]

  admin_create_user_config {
    allow_admin_create_user_only = false
  }

  password_policy {
    minimum_length    = 6
    require_lowercase = false
    require_numbers   = false
    require_symbols   = false
    require_uppercase = false
  }

  schema {
    name                = "email"
    attribute_data_type = "String"
    mutable             = false
    required            = true
  }

  schema {
    name                = "name"
    attribute_data_type = "String"
    mutable             = false
    required            = true
  }
}
