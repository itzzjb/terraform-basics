# First thing we need to do is to define the provider
# Providers are 3rd party tools that terraform uses to interact with different services
provider "aws" {
    # We need to use aws configure command using aws cli to set up the credentials of default profile
    profie = "default"
    region = "us-east-1"
}

# Normally, after defining the provider, we are going to run terraform init to download the provider plugin