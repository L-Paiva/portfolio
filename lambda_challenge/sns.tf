# Create topic
resource "aws_sns_topic" "call-lambda" {
  name = local.lambda_challenge_one.topic_name
}
#Create topic subscription
resource "aws_sns_topic_subscription" "sub_lambda" {
  topic_arn = aws_sns_topic.call-lambda.arn
  protocol  = "lambda"
  endpoint  = aws_lambda_function.func.arn
}