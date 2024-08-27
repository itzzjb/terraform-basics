# Lot of times when we are creating resources, we need to output some values from the resources.
# For example, when we create an EC2 instance, we need can ping to check if the instance is up and running.
# We can use the output block to output the values of the resources
# This file name should be outputs.tf

output "instance_id" {
    description = "The ID of the EC2 instance"
    value = aws_instance.terraform_instance.id
}

output "instance_ip" {
    description = "The public IP address of the EC2 instance"
    value = aws_instance.terraform_instance.public_ip
}

# The output values will be displayed after running terraform apply command
# We can use terraform output command to display the output values anytime