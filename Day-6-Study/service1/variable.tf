locals {
  nickname = "louis"
}

variable "bucket_name" {
  type        = string
  default     = "t101-louis-secrets-bucket"
  description = "secrets get list"
}

variable "role_name" {
  type    = string
  default = "t101-louis-role-name"
}