variable "group_name" {
    type = string
}

variable "assume_role_arns" {
    type = list
    default = []
    # type = list(string)
}