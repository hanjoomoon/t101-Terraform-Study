output "all_users" {
  value = aws_iam_user.iam
}

output "a_users" {
  value = values(aws_iam_user.iam)[*].arn
}