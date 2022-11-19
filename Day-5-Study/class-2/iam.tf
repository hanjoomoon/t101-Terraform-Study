provider "aws" {
  region = "ap-northeast-2"
}

resource "aws_iam_user" "iam" {
  for_each = toset(var.user_names)
  name     = each.value
}