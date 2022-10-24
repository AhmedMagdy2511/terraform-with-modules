resource "aws_s3_bucket_notification" "my-trigger" {
    bucket = "terraform-backend-devops-iti"

    lambda_function {
        lambda_function_arn = "${aws_lambda_function.stateFile_triger.arn}"
        events              = ["s3:ObjectCreated:*"]
        filter_prefix       = ""
        filter_suffix       = ""
    }
}

resource "aws_lambda_permission" "AllowS3Invoke" {
  statement_id  = "AllowS3Invoke"
  action        = "lambda:InvokeFunction"
  function_name = "${aws_lambda_function.stateFile_triger.arn}"
  principal = "s3.amazonaws.com"
  source_arn = "arn:aws:s3:::terraform-backend-devops-iti/*"
}