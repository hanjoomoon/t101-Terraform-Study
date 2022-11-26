resource "aws_iam_role" "github_role" {
  name               = "GithubActionsRole"
  assume_role_policy = data.aws_iam_policy_document.github_allow.json
}

resource "aws_iam_role_policy" "example" {
  role   = aws_iam_role.github_role.id
  policy = data.aws_iam_policy_document.policy_bucket_list.json
}