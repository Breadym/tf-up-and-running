terraform {
  backend "remote" {

    organization = "tfbready"

    workspaces {
      name = "tfbready_workspace"
      }
    }
  }
resource "null_resource" "example" {
  triggers = {
    value = "A example resource that does nothing!"
}
}
