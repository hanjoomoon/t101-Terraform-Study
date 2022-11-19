locals {
  nickname = "louis"
}

# resource "aws_iam_user" "myiam" {
#   count = 3
#   name  = "${local.nickname}.${count.index}"
# }

# resource "aws_iam_user" "myiam" {
#   count = length(var.user_names)
#   name  = var.user_names[count.index]
# }