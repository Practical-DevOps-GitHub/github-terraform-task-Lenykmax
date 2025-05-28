output "repository_url" {
  description = "The URL of the created GitHub repository"
  value       = github_repository.repo.html_url
}

output "default_branch" {
  description = "The default branch of the repository"
  value       = github_repository.repo.default_branch
}

output "collaborator" {
  description = "The collaborator added to the repository"
  value       = github_repository_collaborator.collaborator.username
}

output "deploy_key" {
  description = "The deploy key added to the repository"
  value       = github_deploy_key.deploy_key.key
}