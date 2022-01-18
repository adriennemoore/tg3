resource "aws_s3_bucket" "mod_bucket" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = var.x
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    yor_trace   = "72bf4118-28c7-4b6d-8ca1-089eb2d64db1"
  }
}


variable "x" {

}