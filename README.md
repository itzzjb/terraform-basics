# Terraform Basics

`terraform init` — In order to prepare the working directory for use with Terraform, the command performs Backend Initialization, Child Module Installation, and Plugin Installation.

`terraform plan` — Plan will generate an execution plan, showing you what actions will be taken without actually performing the planned actions.

`terraform apply` — Create or update infrastructure depending on the configuration files. By default, a plan will be generated first and will need to be approved before it is applied.

`terraform destroy` — Destroy the infrastructure managed by Terraform.

`terraform refresh` — Modify the state file with updated metadata containing information on the resources being managed in Terraform. Will not modify your infrastructure.
