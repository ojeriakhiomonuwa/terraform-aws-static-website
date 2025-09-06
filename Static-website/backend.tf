terraform {
  backend "s3" {
    bucket       = "s3-static-website-statefile-bucket"
    key          = "backend/statefile.tfstate"
    region       = "us-east-1"
    use_lockfile = true # Enable S3-native locking
  }
}