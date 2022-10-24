# resource "aws_s3control_object_lambda_access_point" "s3_labda_ACL" {
#   name = "s3_labda_ACL"

#   configuration {
#     supporting_access_point = "arn:aws:s3:::terraform-backend-devops-iti:accesspoint/."

#     transformation_configuration {
#       actions = ["GetObject"]

#       content_transformation {
#         aws_lambda {
#           function_arn = aws_lambda_function.stateFile_triger.arn
#         }
#       }
#     }
#   }
# }
# resource "aws_s3control_object_lambda_access_point_policy" "s3_labda_ACL_policy" {
#   name = aws_s3control_object_lambda_access_point.s3_labda_ACL.name

#   policy = jsonencode([{
#     "Version" : "2012-10-17",
#     "Statement" : [
#       {
#         "Effect" : "Allow",
#         "Action" : [
#           "s3:*",
#           "s3-object-lambda:*"
#         ],
#         Principal = {
#           AWS = {}
#         }
#         Resource = aws_s3control_object_lambda_access_point.s3_labda_ACL.arn
#         #Resource = "*"
#     }]
#     },
#     {
#       "Version" : "2012-10-17",
#       "Statement" : [
#         {
#           "Effect" : "Allow",
#           "Action" : [
#             "logs:CreateLogGroup",
#             "logs:CreateLogStream",
#             "logs:PutLogEvents",
#             "s3-object-lambda:WriteGetObjectResponse"
#           ],
#           Principal = {
#             AWS = {}
#           }
#           Resource = "*"
#         }
#       ]
#   }])
# }

