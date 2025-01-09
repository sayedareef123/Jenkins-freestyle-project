terraform {
  backend "s3" {
    bucket         = "wordpress-websit" 
    key            = "actions/terraform.tfstate"    # Path to the state file in S3
    region         = "ap-south-1"                 # AWS region
    encrypt        = true                         # Enable encryption
  }
}
