# First thing we need to do is to define the provider
# Providers are 3rd party tools that terraform uses to interact with different services
# The AWS IAM user should have the required permissions to create the infrastructure in AWS

provider "aws" {
    # We need to use aws configure command using aws cli to set up the credentials of default profile
    # Terraform will use this default profile to authenticate with AWS
    profile = "default"
    region = "us-east-1"
}

# Normally, after defining the provider, we are going to run terraform init to download the provider plugin

# Next, we are going to define a resource
# Resources are the infrastructure components that we want to create
# In this case, we are going to create an EC2 instance
# The EC2 instance will be created in the default VPC and default subnet
# The instance will be created using the Amazon Linux 2 AMI and with t2.micro instance type
# The instance will be created with the default security group, key pair, IAM role
# If you want to create the instance in a specific VPC, subnet, security group, key pair, IAM role, you need to define them in the resource block
resource "aws_instance" "terraform_instance" {
    # We can use var.variable_name to access the value of the variable from variables.tf
    ami = var.instance_ami
    instance_type = var.instance_type
    tags = {
        Name = var.instance_name
    }
  
}