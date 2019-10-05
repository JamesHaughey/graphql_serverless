# backend.hcl
bucket = "jimmyhaugh-jenkins-terraform-state"
region = "eu-west-1"
dynamodb_table = "terraform-locks"
encrypt = true