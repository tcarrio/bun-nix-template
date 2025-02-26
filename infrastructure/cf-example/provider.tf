provider "cloudflare" {
  # `api_token` configured via env var `CLOUDFLARE_API_TOKEN` 
}

# Configure the `aws` provider such that you can use resources like S3 buckets
# from it, but have the backing service be Cloudflare
provider "aws" {
  region = "us-east-1"

  # `access_key` configured via env var `AWS_ACCESS_KEY_ID`
  # `secret_key` configured via env var `AWS_SECRET_ACCESS_KEY`

  skip_credentials_validation = true
  skip_region_validation      = true
  skip_requesting_account_id  = true

  endpoints {
    s3 = "https://${var.cf_acct_id}.r2.cloudflarestorage.com"
  }
}
