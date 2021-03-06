# Terraform RDS (Free Tier) Module

A Terraform module that deploys a MySQL RDS database instance in AWS.

By default, the security group created has open access (`0.0.0.0/0`). Tightening database access (e.g. restricting access to a specific ip address) can be done in the AWS Console once the terraform config has been deployed.

## Prerequisites

-   The Terraform CLI installed
    -   Installation can be verified via `$ terraform -help`
-   The AWS CLI installed
    -   Installation can be verified via `$ which aws`
-   AWS credentials configured in the CLI
    -   This can be verified via `$ aws configure`

## To Deploy

-   Check configuration in `variables.tf`
-   Run `$ terraform init` to create configuration
-   Run `$ terraform plan -out=tfplan` to set variables
-   Run `$ terraform apply "tfplan"` to apply + deploy to AWS

## To Destroy

-   Run `$ terraform destroy` to kill all AWS resoures created by the configuration
