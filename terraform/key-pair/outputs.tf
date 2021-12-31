output "key_pair_key_name" {
    description = "The key pair name."
    value = aws_key_pair.server.key_name
    #value = concat(aws_key_pair.server.*.key_name, [""][0])
}

# output "key_pair_key_id" {
#     description = "The key paid ID"
#     value       = aws_key_pair.server.key_pair
#     #value       = concat(aws_key_pair.server.*.key_pair, [""])[0]
# }

# output "key_pair_fingerprint" {
#     description = "The MD5 public key fingerprint as specified in section 4 pf TFC 4716."
#     value = aws_key_pair.server.fingerprint
#     #value = concat(aws_key_pair.server.*.fingerprint, [""][0])
# }