terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "6.13.0"
    }
  }
 # backend "s3" {
  #  bucket         = "remote-be"
   # region         = "us-west-2"
    #dynamodb_table = "state-table"
    #key            = "terraform.tfstate"
    #encrypt        = true

  #}
}
