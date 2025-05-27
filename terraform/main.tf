resource "github_repository" "my_repo" {
  name        = "my-repo"
  description = "This is a repository created using Terraform"
  private     = true
}

resource "github_branch" "develop" {
  repository = github_repository.my_repo.name
  branch     = "develop"
}

resource "github_branch_protection" "main" {
  repository = github_repository.my_repo.name
  branch     = "main"

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    required_approving_review_count = 1
  }

  enforce_admins = true
  required_status_checks {
    strict = true
    contexts = []
  }
}

resource "github_branch_protection" "develop" {
  repository = github_repository.my_repo.name
  branch     = "develop"

  required_pull_request_reviews {
    dismiss_stale_reviews = true
    required_approving_review_count = 2
  }

  enforce_admins = true
  required_status_checks {
    strict = true
    contexts = []
  }
}

resource "github_repository_collaborator" "collaborator" {
  repository = github_repository.my_repo.name
  username   = "softservedata"
  permission = "push"
}

resource "github_deploy_key" "deploy_key" {
  repository = github_repository.my_repo.name
  title      = "DEPLOY_KEY"
  key        = file("path/to/your/deploy_key.pub")
  read_only  = false
}