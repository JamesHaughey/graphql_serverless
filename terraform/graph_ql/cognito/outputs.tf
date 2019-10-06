resource "aws_ssm_parameter" "cognito_pool_arn" {
  name  = "${var.namespace}-pool-arn"
  type  = "String"
  value = aws_cognito_user_pool.pool.arn
}

output "cognito_pool_arn" {
  value = aws_cognito_user_pool.pool.arn
  description = "The ARN of the cognito pool created"
}

resource "aws_ssm_parameter" "cognito_pool_id" {
  name  = "${var.namespace}-pool-id"
  type  = "String"
  value = aws_cognito_user_pool.pool.id
}

output "cognito_pool_id" {
  value = aws_cognito_user_pool.pool.id
  description = "The ID of the cognito pool created"
}

resource "aws_ssm_parameter" "cognito_pool_client" {
  name  = "${var.namespace}-pool-client-id"
  type  = "String"
  value = aws_cognito_user_pool_client.client.id
}

output "cognito_pool_client_id" {
  value = aws_cognito_user_pool_client.client.id
  description = "The ID of the cognito pool client created"
}