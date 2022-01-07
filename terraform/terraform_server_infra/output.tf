output "image_id" {
  value = "${data.aws_ami.base.id}"
}

output "public_ip" {
  value = "${aws_instance.vk-ab-infra_small.public_ip}"
}

# output "jenkins_server_dns" {
#   value = "${aws_instance.vk-jenkins-server.public_dns}"
# }