variable "secret_name" {
  description = "Name of the secret in AWS Secrets Manager"
  type        = string
}

variable "description" {
  description = "Description of the secret"
  type        = string
  default     = "Secret managed by Terraform"
}

variable "environment" {
  description = "Environment name"
  type        = string
}