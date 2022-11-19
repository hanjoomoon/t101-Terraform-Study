# class-1

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.39.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_user.main](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_user_names"></a> [user\_names](#input\_user\_names) | Create IAM users with these names | `list(string)` | <pre>[<br>  "louis",<br>  "drama",<br>  "company"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_all_arns"></a> [all\_arns](#output\_all\_arns) | The ARNs for all users |
| <a name="output_first_arn"></a> [first\_arn](#output\_first\_arn) | The ARN for the first user |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
