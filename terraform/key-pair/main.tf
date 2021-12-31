
provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region     = "${var.default_region}"
}

resource "key_pair" "aws_key_pair_1"{
    source = "terraform-aws-modules/key-pair/aws"
    count = var.create_key_pair ? 1 : 0

    key_name = var.key_name
    key_name_prefix = var.key_name_prefix
    public_key = var.public_key

    tags = {
        Terraform = "<3"
    }
}

# default_region

# resource "random_pet" "this" {
#     length = 2
# }

# resource "tls_private_key" "this" {
#     source = "../../"

#     key_name = random_pet.this.id
#     public_key = tls_private_key.this.public_key_openssh

#     tags = {
#         Terraform = "<3"
#     }
  
# }

# module "key_pair_external" {
#     source = "../../"


#     key_name = "${random_pet.this.id}-external"
#     public_key = "ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABgQDGceDCu75Z2alf1kpUvAuCJ+jl5YHRWwFnmr0+LDKMOySpMdOLwFDaso3/23P1TI2fS/6PK/jzAF/z9UCWNja1PJRHh+uif01UKHqjw/BAZldIo3pBveuXS2hcFwRdbLZDJbbfckHg/FyOoDKeCPbqmp8QqVqOB57LqnXTnpoVauVpvMCzMMlKDiZRJ57M292uzs8CrHsrW413ganczhfUkR2hg9DLxxEpbIrIpFMDLZVTGQsvfcLEvRz3xteve1G527+qOiTJdK+YHBlxw1LSv+RivnKNzHnpbaw9SaNYqwEQ+KrZl7k5fC6n414uQ8dPdH3E360GxcAUamsoOeoPiNZMLDxXnIUJVQxOHb84YRm/mXM3r+IC2+gQtJE16p1a0Al6x+V98enyS/B2onFldO581Aqmye+wM1G+9X+33VOGoCgpE1Os7Nn6sVEUH3lwl5RC5gzybr5RNUVlMRTawps9egEu5c3v0P/Qs1oqmaESEEGAmsbcLYawpVuwU3k= dk@Users-MacBook-Pro.local"

#     # tags = {
#     #     External = "yes"
#     # }
# }