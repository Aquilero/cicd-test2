module "s3-website" {
  source = "./modules/s3-website"
  bucket_name = "my-bucket-ue139cicd"
}