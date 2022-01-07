locals {
    account_name    =  {
        users       = "vk-corp-users"
        staging     = "vk-corp-staging"
        production  = "vk-corp-production"
    }
    
    account_owner_email = {
        users       = "vladimir.klymniuk+1@gmail.com"
        staging     = "vladimir.klymniuk+2@gmail.com"
        production  = "vladimir.klymniuk+3@gmail.com"
    }

    terraform_state_bucket_name = {
        staging     = "vk-corp-terraform-state-staging"
        production  = "vk-corp-terraform-state-production"
    }
}