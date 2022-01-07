provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region     = "${var.region}"
}

module "iam_account" {
    source = "../modules/iam-account"
    account_alias = "new-test-account-awesome-company-00"
}