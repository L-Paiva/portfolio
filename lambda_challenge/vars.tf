variable "AWS_REGION" {
  description = "Aws region TUI operates"
  type        = string
  default     = "eu-central-1"
}

variable "topic_name" {
  description = "SNS topic name"
  type        = string
  default     = "call-lambda"
}

variable "zip_file" {
  description = "Filename with lambda function"
  type        = string
  default     = "handler.zip"
}

variable "lambda_function_name" {
  description = "Lambda function name"
  type        = string
  default     = "lambda_called_from_sns"
}

variable "handler_function" {
  description = "handler of lambda function"
  type        = string
  default     = "handler.lambda_handler"
}

variable "python" {
  description = "Identifier of the function's runtime."
  type        = string
  default     = "python3.9"
}

variable "iam_role" {
  description = "Role created in IAM"
  type        = string
  default     = "lambda_role"
}

variable "bucket_atachment" {
  description = "Attach bucket policy to role"
  type        = string
  default     = "attach_bucket"
}

variable "lambda_atachment" {
  description = "Attach lambda policy to role"
  type        = string
  default     = "attach_basic"
}

variable "policy_sns" {
  description = "SNS pulish permissions policy"
  type        = string
  default     = "sns_policy"
}

variable "policy_lambda" {
  description = "Lambda permissions policy"
  type        = string
  default     = "lambda_basic"
}

variable "policy_bucket" {
  description = "Bucket permissions policy"
  type        = string
  default     = "bucket_policy"
}

variable "challenge_one_bucket" {
  description = "Bucket to store logs"
  type        = string
  default     = "bucket-challenge-one"
}

variable "bucket_tag" {
  description = "Bucket to store logs"
  type        = string
  default     = "lambda-challenge-one"
}