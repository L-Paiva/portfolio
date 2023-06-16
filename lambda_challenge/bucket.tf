# Create S3 bucket
resource "aws_s3_bucket" "bucket-challenge-one" {
  bucket        = local.lambda_challenge_one.logs_bucket
  force_destroy = true

  tags = {
    Name = local.lambda_challenge_one.tag_bucket
  }
}
