module "Network" {
  source      = "/home/ahmed/Desktop/DevOps/Terraform/Network"
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr
  # region=var.region
}
module "lambda" {
  source = "/home/ahmed/Desktop/DevOps/Terraform/lambda"
  #text_role_lambda = var.text_role_lambda
  #terraform_ses = var.terraform_ses
  #stateFile_triger = var.stateFile_triger
  # s3_lambda_ACL = var.s3_lambda_ACL
  # s3_lambda_ACL_policy = var.s3_lambda_ACL_policy
}
module "ec2" {
  source = "/home/ahmed/Desktop/DevOps/Terraform/ec2"
  #application = var.application
  #bastion = var.bastion
  vpc_cidr    = var.vpc_cidr
  subnet_cidr = var.subnet_cidr

}
module "ses" {
  source = "/home/ahmed/Desktop/DevOps/Terraform/ses"
}