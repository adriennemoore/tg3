resource "aws_s3_bucket" "regular_bucket" {
  # bucket is public
  # bucket is not encrypted
  # bucket does not have access logs
  # bucket does not have versioning
  bucket        = "xx"
  acl           = "public-read"
  force_destroy = true
  tags = {
    Name        = "${local.resource_prefix.value}-data"
    Environment = local.resource_prefix.value
    yor_trace   = "493a5151-86cc-438d-b20e-132bc5e3ea79"
  }
}

resource "aws_something_else" "x" {
  hello = "hi"
}

module "mod" {
  source = "./module"
  x      = "abc"
}

module "mod2" {
  source = "./module"
  x      = "xyz"
}

module "iam_policy" {
  source  = "terraform-aws-modules/iam/aws//modules/iam-policy"
  version = "~> 4.3"

  name        = "example"
  path        = "/"
  description = "My example policy"

  policy = <<EOF
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Action": [
        "*"
      ],
      "Effect": "Allow",
      "Resource": "*"
    }
  ]
}
EOF
}

module "dynamodb_table" {
  source = "terraform-aws-modules/dynamodb-table/aws"

  name     = "my-table"
  hash_key = "id"

  attributes = [
    {
      name = "id"
      type = "N"
    }
  ]

  tags = {
    Terraform   = "true"
    Environment = "staging"
    yor_trace   = "e41097cb-79c8-4a73-ae4f-6fce261708ab"
  }

  server_side_encryption_enabled = false
}

module "dynamodb_table2" {
  source = "terraform-aws-modules/dynamodb-table/aws"

  name     = "my-table2"
  hash_key = "id2"

  attributes = [
    {
      name = "id2"
      type = "N"
    }
  ]

  tags = {
    Terraform   = "true2"
    Environment = "staging2"
    yor_trace   = "1ed2ce19-f410-4fcf-925e-e84e4aa291c2"
  }

  server_side_encryption_enabled = false
}
