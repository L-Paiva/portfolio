locals {
  aws = {
    region = var.AWS_REGION
  }

  lambda_challenge_one = {
    topic_name         = var.topic_name
    function_file      = var.zip_file
    function_name      = var.lambda_function_name
    handler_name       = var.handler_function
    function_runtime   = var.python
    role_name          = var.iam_role
    bucket_attach_name = var.bucket_atachment
    lambda_attach_name = var.lambda_atachment
    sns_policy_name    = var.policy_sns
    lambda_policy_name = var.policy_lambda
    bucket_policy_name = var.policy_bucket
    logs_bucket        = var.challenge_one_bucket
    tag_bucket         = var.bucket_tag
  }

}