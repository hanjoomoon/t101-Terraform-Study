resource "aws_key_pair" "ec2-demo-key" {
  key_name   = "ec2-demo-key"
  public_key = file("./ec2-demo-key.pub")
}
data "aws_ami" "amazon-linux-2" {
  most_recent = true

  filter {
    name   = "owner-alias"
    values = ["amazon"]
  }

  filter {
    name   = "name"
    values = ["amzn2-ami-hvm*"]
  }

  owners = ["amazon"]
}

resource "aws_instance" "secrets_instance" {
  ami                    = data.aws_ami.amazon-linux-2.id
  instance_type          = "t2.nano"
  vpc_security_group_ids = [aws_security_group.stg_mysg.id]
  key_name               = aws_key_pair.ec2-demo-key.key_name
  iam_instance_profile   = aws_iam_instance_profile.instance.name
}

resource "aws_iam_role" "instance" {
  name_prefix        = var.role_name
  assume_role_policy = data.aws_iam_policy_document.assume_role.json
}

data "aws_iam_policy_document" "assume_role" {
  statement {
    effect  = "Allow"
    actions = ["sts:AssumeRole"]

    principals {
      type        = "Service"
      identifiers = ["ec2.amazonaws.com"]
    }
  }
}

resource "aws_iam_role_policy" "example" {
  role   = aws_iam_role.instance.id
  policy = data.aws_iam_policy_document.ec2_admin_permissions.json
}

data "aws_iam_policy_document" "ec2_admin_permissions" {
  statement {
    effect    = "Allow"
    actions   = ["ec2:*"]
    resources = ["*"]
  }

  statement {
    sid = "1"

    actions = [
      "s3:ListAllMyBuckets",
      "s3:GetBucketLocation",
    ]

    resources = [
      "arn:aws:s3:::*",
    ]
  }

  statement {
    actions = [
      "s3:List*",
      "s3:Get*",
    ]

    resources = [
      "arn:aws:s3:::${var.bucket_name}",
      "arn:aws:s3:::${var.bucket_name}/*",
    ]
  }
}

resource "aws_iam_instance_profile" "instance" {
  role = aws_iam_role.instance.name
}