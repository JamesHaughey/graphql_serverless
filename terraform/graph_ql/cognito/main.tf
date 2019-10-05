provider "aws" {
    region = "us-east-1"
}

# Partial configuration the other settings bucket, region, dynamodb will be passed
# in through the command "terraform init -backend-config=backend.hcl"
terraform {
  backend "s3" {
    key = "terraform/graph_ql/cognito/terraform.tfstate"
  }
}