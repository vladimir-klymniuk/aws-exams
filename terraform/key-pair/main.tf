resource "aws_key_pair" "this" {
    count = var.create_key_pair ? 1 : 0
}