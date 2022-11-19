# class-2

<!-- BEGINNING OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
## Requirements

No requirements.

## Providers

| Name | Version |
|------|---------|
| <a name="provider_aws"></a> [aws](#provider\_aws) | 4.40.0 |

## Modules

No modules.

## Resources

| Name | Type |
|------|------|
| [aws_iam_user.iam](https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/iam_user) | resource |

## Inputs

| Name | Description | Type | Default | Required |
|------|-------------|------|---------|:--------:|
| <a name="input_user_names"></a> [user\_names](#input\_user\_names) | Create IAM users with these names | `list(string)` | <pre>[<br>  "louis",<br>  "drama",<br>  "company"<br>]</pre> | no |

## Outputs

| Name | Description |
|------|-------------|
| <a name="output_a_users"></a> [a\_users](#output\_a\_users) | n/a |
| <a name="output_all_users"></a> [all\_users](#output\_all\_users) | n/a |
<!-- END OF PRE-COMMIT-TERRAFORM DOCS HOOK -->
