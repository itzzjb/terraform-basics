# We can overide the defualt values of variables by running terraform apply -var 'variable_name=value' command
# We can also use terraform.tfvars file to define the values of the variables
# The values defined in terraform.tfvars file will override the default values of the variables
instance_ami = "ami-066784287e358dad1"
instance_type = "t2.micro"
instance_name = "my-terraform-instance"