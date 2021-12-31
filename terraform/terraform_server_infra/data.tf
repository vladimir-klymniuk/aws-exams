
data "aws_ami" "base" {
  most_recent = true

  filter {
    name   = "name"
    values = ["debian-jessie-amd64-hvm-*"]
  }

  filter {
    name   = "virtualization-type"
    values = ["hvm"]
  }

  owners = ["679593333241"]

}

# data "aws_security_group" "vk-jenkins-sg" {
#   depends_on = ["aws_security_group.vk-jenkins-sg-web"]

#   filter {
#     name   = "group-name"
#     values = ["vk-jenkins-sg"]
#   }

#   provider = "aws"
# }
