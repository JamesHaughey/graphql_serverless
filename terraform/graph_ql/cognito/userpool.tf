resource "aws_cognito_user_pool" "pool" {
  name                       = "${var.namespace}"
  # email_verification_subject = "Device Verification Code"
  # email_verification_message = "Please use the following code {####}"
  # auto_verified_attributes   = ["email"]

  alias_attributes = [
    "preferred_username"
  ]

  lambda_config {
    pre_sign_up = "arn:aws:cloudformation:us-east-1:587678272550:stack/graphql-serverless-dev/19d278f0-e773-11e9-8690-0e75601403f8"
  }

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

    string_attribute_constraints {
      min_length = 6
      max_length = 32
    }
  }

  schema {
    name                = "name"
    attribute_data_type = "String"
    mutable             = false
    required            = true

    string_attribute_constraints {
      min_length = 6
      max_length = 32
    }
  }
}

resource "aws_cognito_user_pool_client" "client" {
  name            = "WebApp"
  user_pool_id    = "${aws_cognito_user_pool.pool.id}"
  generate_secret = false
}
