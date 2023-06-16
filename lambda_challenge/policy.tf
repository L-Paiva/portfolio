#create sns policy
resource "aws_iam_policy" "policy_sns_publish" {
  name        = local.lambda_challenge_one.sns_policy_name
  path        = "/"
  description = "SNS publish policy"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "sns:Publish",
          "sns:Subscribe",
        ],
        "Effect" : "Allow",
        "Resource" : "${aws_sns_topic.call-lambda.arn}"
      }
    ]
  })
}
#Create policy for Lambda permissions
resource "aws_iam_policy" "lambda_basic" {
  name        = local.lambda_challenge_one.lambda_policy_name
  path        = "/"
  description = "Lambda basics"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "logs:CreateLogGroup",
          "logs:CreateLogStream",
          "logs:PutLogEvents"
        ],
        "Resource" : [
          "arn:aws:logs:*"
        ]
      }
    ]
  })
}
# Create S3 bucket policy
resource "aws_iam_policy" "bucket_policy" {
  name        = local.lambda_challenge_one.bucket_policy_name
  path        = "/"
  description = "Allow lambda to use bucket"

  policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Effect" : "Allow",
        "Action" : [
          "s3:PutObject",
          "s3:GetObject",
          "s3:DeleteObject"
        ],
        "Resource" : [
          "${aws_s3_bucket.bucket-challenge-one.arn}/*"
        ]
      }
    ]
  })
}



