

resource "github_repository" "repo" {
  name = "Terraform_Repository"
  description = "creating a repo using Terraform"
  visibility = "public"
}