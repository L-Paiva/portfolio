
# Create AWS Lambda Function
resource "aws_lambda_function" "func" {
  filename      = local.lambda_challenge_one.function_file
  function_name = local.lambda_challenge_one.function_name
  role          = aws_iam_role.lambda_role_one.arn
  handler       = local.lambda_challenge_one.handler_name
  runtime       = local.lambda_challenge_one.function_runtime
}

resource "aws_lambda_permission" "with_sns" {
  statement_id  = "AllowExecutionFromSNS"
  action        = "lambda:InvokeFunction"
  function_name = aws_lambda_function.func.function_name
  principal     = "sns.amazonaws.com"
  source_arn    = aws_sns_topic.call-lambda.arn
}










