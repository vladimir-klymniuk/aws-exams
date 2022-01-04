provider "aws" {
    access_key = "${var.aws_access_key}"
    secret_key = "${var.aws_secret_key}"
    region     = "${var.region}"
}

provider "aws" {
    assume_role {
        role_arn = "arn:aws:iam::${aws_organizations_account.users.id}:role/Admin"
    }

    alias = "users"
    region = "${var.region}"
}

provider "aws" {
    assume_role {
        role_arn = "arn:aws:iam::${aws_organizations_account.staging.id}:role/Admin"
    }
  
    alias = "staging"
    region = "${var.region}"
}

provider "aws" {
    assume_role {
        role_arn = "arn:aws:iam::${aws_organizations_account.production.id}:role/Admin"
    }
  
    alias = "production"
    region = "${var.region}"
}

resource "aws_organizations_organization" "organization" {
}

resource "aws_organizations_account" "users" {
    name        = local.account_name["users"]
    email       = local.account_owner_email["users"]
    role_name   = "Admin"
}

resource "aws_organizations_account" "staging" {
    name        = local.account_name["staging"]
    email       = local.account_owner_email["staging"]
    role_name   = "Admin"
}

resource "aws_organizations_account" "production" {
    name        = local.account_name["production"]
    email       = local.account_owner_email["production"]
    role_name   = "Admin"
}