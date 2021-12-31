provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region     = "${var.region}"
}

resource "aws_instance" "vk-ab-infra_small" {
    ami             = "${var.base_ami}"
    instance_type   = "${var.instace_type_small}"
    key_name        = "${var.key_name}"
    # vpc_security_group_ids = ["${data.aws_security_group.vk-ab-infra_small-sg.id}"]

    tags = {
        Name = "${var.my_name}"
    }

    # provisioner "file" {
    #     connection {
    #         user        = "ec2-user"
    #         private_key = "${file(var.private_key_path)}"
    #     }
    #     # source = 
    # }

    provisioner "remote-exec" {
        connection {
            type        = "ssh"
            user        = "c2-user"
            private_key = "${file(var.private_key_path)}"
            host = self.public_ip
        }

        inline = [
          "sudo bash",
          "sudo yum install vim",
            # "puppet apply",
            # "consul join ${aws_instance.web.private_ip}",
        ]
    }
}
