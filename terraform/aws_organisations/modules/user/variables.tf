variable "name" {
    type = string
}

variable "pgp_key" {
    type = string
}

variable "groups" {
    type = list
    default = []
# type = list(string)
}