resource "github_repository" "this" {
  name               = "infrastructure-dev"
  description        = "backend dev repository"
  auto_init          = true
  gitignore_template = "Terraform"
}