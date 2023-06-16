# Create Role for permission in IAM
resource "aws_iam_role" "lambda_role_one" {
  name = local.lambda_challenge_one.role_name

  assume_role_policy = jsonencode({
    "Version" : "2012-10-17",
    "Statement" : [
      {
        "Action" : [
          "sts:AssumeRole"
        ],
        "Effect" : "Allow",
        "Principal" : {
          "Service" : [
            "lambda.amazonaws.com"
          ]
        }
      },
    ]
  })
}
# Attach bucket policy to role
resource "aws_iam_policy_attachment" "attach_bucket" {
  name       = local.lambda_challenge_one.bucket_attach_name
  roles      = [aws_iam_role.lambda_role_one.name]
  policy_arn = aws_iam_policy.bucket_policy.arn
}
resource "aws_iam_policy_attachment" "attach_basic" {
  name       = local.lambda_challenge_one.lambda_attach_name
  roles      = [aws_iam_role.lambda_role_one.name]
  policy_arn = aws_iam_policy.lambda_basic.arn
}