#provider.aws
provider "aws" {
    region = var.region
}

#remote_state.s3
terraform {
  backend "s3" {
    bucket = "${var.s3_bucket_name}"
    key    = "${var.s3_key_name}"
    region = "${var.region}"
    dynamodb_table = "${var.dynamodb_table_name}"
  }
}

#module.lambda_function
module "lambda_function" {
  source = "./terraform_modules/lambda_function"
  ecr_repository_name = var.repository_name
  doctor_image_tag = var.image_tag
}


