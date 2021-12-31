# output "key_pair_key_name" {
#     description = "The key pair name."
#     value = concat(aws_key_pair.this.*.key_name, [""][0])
# }

# output "key_pair_key_id" {
#     description = "The key paid ID"
#     value       = concat(aws_key_pair.this.*.key_pair, [""])[0]
# }

# output "key_pair_fingerprint" {
#     description = "The MD5 public key fingerprint as specified in section 4 pf TFC 4716."
#     value = concat(aws_key_pair.this.*.fingerprint, [""][0])
# }