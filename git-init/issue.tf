resource "github_issue" "test" {
  repository       = github_repository.example.name
  title            = "My issue title"
  body             = "The body of my issue"
}