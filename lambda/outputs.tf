output "role_for_lambda" {
  value = aws_iam_role.role_for_lambda.id
}
# output "terraform_ses" {
#   value = aws_ses_email_identity.terraform_ses.id
# }
output "stateFile_triger" {
  value = aws_lambda_function.stateFile_triger.id
}
# output "s3_lambda_ACL_policy" {
#   value = aws_s3control_object_lambda_access_point_policy.s3_lambda_ACL_policy.id
# }
# output "s3_lambda_ACL" {
#   value = aws_s3control_object_lambda_access_point.s3_lambda_ACL.id
# }