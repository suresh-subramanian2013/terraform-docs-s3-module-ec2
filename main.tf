module "website_s3_bucket" {
  source = "./modules/aws-s3-static-website-bucket"

  bucket_name = "sureshmodules3bucket1>"

  tags = {
    Terraform   = "true"
    Environment = "dev"
  }
}

