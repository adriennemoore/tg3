resource "aws_cloudwatch_log_group" "example1" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "e9db49e9-63b9-4813-90ea-a024ea7d8d5c"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example2" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "014d8548-5a87-4917-be50-dbfd5358fb9a"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example3" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "921fe9dd-186d-4ff1-abaa-2753041d4174"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example4" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "5250c97e-7a85-4130-8243-42c2e563e5b5"
  }
  retention_in_days = 90
}

resource "aws_cloudwatch_log_group" "example5" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "4cb9a975-ef4e-4164-87f1-eba46aafc5f8"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example6" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "2776fe90-6aee-4f39-966a-31bc2ac53718"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example7" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "c8ea9262-90f2-4a6d-b038-7910f279e85f"
  }
  retention_in_days = 45
}

resource "aws_cloudwatch_log_group" "example8" {
  name = "example1"
  tags = {
    Environment = "production"
    Application = "serviceA"
    yor_trace   = "6d1ba49e-3e50-4ac1-ac90-f9f41f43732b"
  }
}
