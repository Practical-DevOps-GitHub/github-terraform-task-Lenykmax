variable "repository_name" {
  description = "The name of the GitHub repository"
  type        = string
}

variable "collaborator_username" {
  description = "The GitHub username of the collaborator to be added"
  type        = string
  default     = "softservedata"
}

variable "default_branch" {
  description = "The default branch for the repository"
  type        = string
  default     = "develop"
}

variable "deploy_key" {
  description = "The deploy key for the repository"
  type        = string
}

variable "pull_request_template" {
  description = "The content of the pull request template"
  type        = string
  default     = <<EOF
## Describe your changes

## Issue ticket number and link

## Checklist before requesting a review
- [ ] I have performed a self-review of my code
- [ ] If it is a core feature, I have added thorough tests
- [ ] Do we need to implement analytics?
- [ ] Will this be part of a product update? If yes, please write one phrase about this update
EOF
}