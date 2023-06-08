terraform {
  required_providers {
    github = {
        source = "integrations/github"
        version = "~> 5.3.0"
    }
  }
  
  backend "gcs" {
    bucket = "github-terraform1"
    credentials = "./terraform-gcs.json"
  }
}

