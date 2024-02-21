terraform {
  # cloud {
  #   organization = "work-demos"
  #   workspaces {
  #     name = "akeyless-dba-workflow-tf"
  #   }
  # }

  # You can change this backend to be whatever you like.
  backend "gcs" {
    bucket = "customer-success-391112-terraform-state-bucket"
    prefix = "terraform/state/dba-example"
  }
  required_providers {
    akeyless = {
      version = ">= 1.0.0"
      source  = "akeyless-community/akeyless"
    }
    aws = {
      source  = "hashicorp/aws"
      version = "~> 5.0"
    }
  }

  
}

# provider "akeyless" {
#   api_gateway_address = "https://api.akeyless.io"
#   jwt_login {
#     access_id = var.AKEYLESS_ACCESS_ID
#   }
  
# }

# Configure the AWS Provider
provider "aws" {
  region = "us-east-1"
}

provider "google" {
  project     = "my-project-id"
  region      = "us-central1"
}

# Make a aws mysql instance
resource "aws_db_instance" "default" {
  allocated_storage    = 10
  db_name              = "mydb"
  engine               = "mysql"
  engine_version       = "5.7"
  instance_class       = "db.t3.micro"
  username             = "foo"
  password             = "foobarbaz"
  parameter_group_name = "default.mysql5.7"
  skip_final_snapshot  = true
}
