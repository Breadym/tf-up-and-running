terraform {
  backend "remote" {

    organization = "example-organization"

    workspaces {
      name = "example-workspace"
      }
    }
  }
