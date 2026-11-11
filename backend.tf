terraform {
  backend "s3" {
    bucket       = "gitubactionsrunners" # Replace with your bucket name
    key          = "production/terraform.tfstate"          # Path inside the bucket
    region       = "us-east-1"                      # Match your AWS region
    encrypt      = true
    use_lockfile = true                             # Native S3 state locking (Terraform 1.10+)
  }
}
