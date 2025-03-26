**Ticket Type:** Task  
**Title:** Terraform Variables  
**Project:** Version Control System Deployment  
**Assignee:** You  
**Reporter:** Derek Morgan  
**Priority:** High  
**Labels:** Terraform, GitHub, Variables  
**Epic Link:** GitHub Expansion  
**Sprint:** Sprint 01/Variables

**Description:**

A repository is needed for code. This repository needs to be configured in such a way that all its attributes are modular and their values are stored in a `variables.tf` file. Read the acceptance criteria below to accomplish this task. 

**Acceptance Criteria:**

> **Note:** If the `terraform validate` command fails, all tasks in the lab will fail!

1\. In `main.tf`, create or use an existing repository with Terraform.  
2\. For the name, use “project” and “env” variables to construct a name separated by a hyphen. E.g. `infrastructure-dev`  
3\. For the description, use the same variables to create a description similar to this: `infrastructure dev repository`.   
4\. Create a variable for the `auto_init` setting, but ensure it asks for the value when you run a Terraform operation.   
5\. Create a variable for the `gitignore` setting and default it to `Terraform`. 

```
resource "github_repository" "this" {
  name               = "infrastructure-dev"
  description        = "backend dev repository"
  auto_init          = true
  gitignore_template = "Terraform"
}
```

6\. The variables in the `variables.tf` file should all have a `type` and `description`. All except the `auto_init` variable should have a default value.   
7\. Apply the configuration and take note of how you can automatically provide the value for `auto_init` and pass the value into an `apply` without having to define it manually. 

**Implementation Notes:**

- <a href="https://registry.terraform.io/providers/integrations/github/latest/docs" target="_blank">GitHub Provider Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/language/values/variables" target="_blank">Terraform Documentation</a>  
- <a href="https://developer.hashicorp.com/terraform/language/expressions/strings#interpolation" target="_blank">Terraform Documentation</a>
