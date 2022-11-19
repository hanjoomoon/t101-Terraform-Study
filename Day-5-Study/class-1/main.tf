resource "aws_iam_user" "main" {
  count = length(var.user_names)
  name  = var.user_names[count.index]
}