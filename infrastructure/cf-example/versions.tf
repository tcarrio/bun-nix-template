terraform {
  required_providers {
    cloudflare = {
      source  = "cloudflare/cloudflare"
      version = "~> 4"
    }
  }

  backend "s3" {
    # NOTE: Ensure the follow environment variables are set for S3 backend
    # to utilize Cloudflare R2 buckets:
    #
    # AWS_REGION=us-east-1
    # AWS_ACCESS_KEY_ID=<access-key-id>
    # AWS_SECRET_ACCESS_KEY=<secret-access-key>
    # AWS_ENDPOINT_URL_S3=https://<account-id>.r2.cloudflarestorage.com

    bucket = "bun-nix-template-bucket"
    key    = "project/iac/env/tfstate"
  }
}
