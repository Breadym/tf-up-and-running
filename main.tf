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
# module "webserver-cluster" {
#   source = "./~/tf-up-and-running/stage/services/webserver-cluster"

# }
# output "webserver-cluster-instance_id" {
#   value = module.webserver-cluster.instance_id
# }

# module "mysql" {
#   source = "./~/tf-up-and-running/stage/services/mysql"

# }
# output "mysql-instance_id" {
#   value = module.mysql.instance_id
# }

# module "s3" {
#   source = "./~/tf-up-and-running/stage/services/s3"

# }
# output "s3-instance_id" {
#   value = module.s3.instance_id
# }