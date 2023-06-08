resource "github_repository" "example" {
  name        = "remote-state-test"
  description = "My awesome codebase"
  auto_init = true
  visibility = "public"
  has_issues = true
}

resource "github_branch" "development" {
  repository = github_repository.example.name
  branch     = "development"
}

# resource "github_branch_protection" "example" {
#   repository_id = github_repository.example.node_id
#   # also accepts repository name
#   # repository_id  = github_repository.example.name

#   pattern          = "development"
#   enforce_admins   = true

#   required_pull_request_reviews {
#     dismiss_stale_reviews  = true
#     restrict_dismissals    = true
#   }

# }