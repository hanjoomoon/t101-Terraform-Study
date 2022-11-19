resource "aws_iam_user" "iam" {
  count = length(var.username)
  name  = var.username[count.index]
}
