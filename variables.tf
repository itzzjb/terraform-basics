# When we have lots of resources, we need to be able to change the values of the resources without changing the resource block
# We can use variables to define the values of the resources
# Variables are defined in a separate file called variables.tf (or any other name)
# Variables are defined using the variable block

variable "instance_name" {
    description = "The name of the EC2 instance"
    type = string
    default = "terraform-instance"
  
}

variable "instance_ami" {
    description = "The AMI of the EC2 instance"
    type = string
    default = "ami-066784287e358dad1"
  
}

variable "instance_type" {
    description = "The instance type of the EC2 instance"
    type = string
    default = "t2.micro"
  
}

# We can use the variables in the resource block
# We can use var.variable_name to access the value of the variable