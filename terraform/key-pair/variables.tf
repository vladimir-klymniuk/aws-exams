variable "create_key_pair" {
    description = "Controls if key pair should be created"
    type        = bool
    default     = true
}

variable "key_name" {
    description = "The name for the key pair."
    type        = string
    default     = null
}

variable "key_name_prefix" {
    description = "Creates a unique name beginning with the specified prefix. Conflicts with key_name."
    type        = string
    default     = null
}

variable "public_key" {
    description = "The public key material."
    type        = string
}


variable "default_region" {
    description = "Default aws region (free-tier)."
    type        = string
}

variable "aws_secret_key" {
    description = "Secret access key"
    type        = string
}

variable "aws_access_key" {
    description = "Access key ID"
    type        = string
}

# variable "tags" {
#     description = "A map of tags to add key pair resource."
#     type        = map(string)
#     default = {
#       "default_tag_key" = "default_tag_value"
#     }
# }