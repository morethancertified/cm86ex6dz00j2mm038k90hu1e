**Ticket Type:** Task  
**Title:** Terraform Variables with AWS VPC  
**Project:** Cloud Infrastructure Deployment  
**Assignee:** You  
**Reporter:** Derek Morgan  
**Priority:** High  
**Labels:** Terraform, AWS, Variables, VPC  
**Epic Link:** AWS Infrastructure Expansion  
**Sprint:** Sprint 01/Variables

**Lab Setup**
This lab uses Localstack to simulate an AWS environment. Localstack is already preinstalled in your environment. You don't need keys or to configure the provider. If you'd like to use your own account, feel free to specify your provider configuration and run `unset aws` and `unset terraform` to decouple them from Localstack.

**Description:**

Your team needs to set up a new Virtual Private Cloud (VPC) in AWS to host your application infrastructure. The VPC needs to be configured in such a way that all its attributes are modular and their values are stored in a `variables.tf` file. Read the acceptance criteria below to accomplish this task.

**Acceptance Criteria:**

> **Note:** If the `terraform validate` command fails, all tasks in the lab will fail!

1. In `main.tf`, create an AWS VPC resource with Terraform.  
2. For the VPC name tag, use "project" and "env" variables to construct a name separated by a hyphen. E.g. `infrastructure-dev`  
3. For the VPC description tag, use the same variables to create a description similar to this: `infrastructure dev vpc`.   
4. Create a variable for the `enable_dns_hostnames` setting, but ensure it asks for the value when you run a Terraform operation.   
5. Create a variable for the `cidr_block` setting and default it to `10.0.0.0/16`. 
6. The variables in the variables.tf file should all have a type and description. Make sure to include appropriate default values where needed.

```
resource "aws_vpc" "this" {
  cidr_block           = "10.0.0.0/16"
  enable_dns_support   = true
  enable_dns_hostnames = true
  
  tags = {
    Name        = "infrastructure-dev"
    Description = "infrastructure dev vpc"
  }
}
```

7\. Apply the configuration and take note of how you can automatically provide the value for `enable_dns_hostnames` and pass the value into an `apply` without having to define it manually. 

**Implementation Notes:**

- <a href="https://registry.terraform.io/providers/hashicorp/aws/latest/docs/resources/vpc" target="_blank">AWS VPC Resource Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/language/values/variables" target="_blank">Terraform Variables Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/language/expressions/strings#interpolation" target="_blank">Terraform String Interpolation Documentation</a>
