resource "aws_ssm_parameter" "cognito_pool" {
  name  = "${var.namespace}-pool-arn"
  type  = "String"
  value = aws_cognito_user_pool.pool.arn
}

resource "aws_ssm_parameter" "cognito_pool_client" {
  name  = "${var.namespace}-pool-client-id"
  type  = "String"
  value = aws_cognito_user_pool_client.client.id
}
