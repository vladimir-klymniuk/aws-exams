variable "aws_access_key" {}
variable "aws_secret_key" {}
variable "private_key_path" {}

variable "region" {
    description = "Default free tier region"
    type        = string
    default     = "us-east-1"
}