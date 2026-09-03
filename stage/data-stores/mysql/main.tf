provider "aws" {
  region = "ap-southeast-2"
}

resource "aws_db_instance" "example" {
  engine = "mysql"
  allocated_storage = 10
  instance_class = "db.t4g.micro"
  db_name = "example_database"
  username = "admin"
  password = "${var.db_password}"


}
