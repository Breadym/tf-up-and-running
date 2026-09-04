# ---------------------------------------------------------------------------------------------------------------------
# REQUIRED PARAMETERS
# You must provide a value for each of these parameters.
# ---------------------------------------------------------------------------------------------------------------------

variable "cluster_name" {
  description = "The name to use for all the cluster resources"
  type        = string
  default     = "a-really-unique-cluster-name"
}

variable "db_remote_state_bucket" {
  description = "The name of the S3 bucket for the database's remote state"
  type        = string
  default     = "a-really-unique-name-that-no-one-else-has-used-2"
}

variable "db_remote_state_key" {
  description = "The path for the database's remote state in S3"
  type        = string
  default     = "global/s3/terraform.tfstate"
}

variable "instance_type" {
  description = "The type of EC2 Instances to run (e.g. t2.micro)"
  type        = string
   default     = "t3.micro"
}

variable "min_size" {
  description = "The minimum number of EC2 Instances in the ASG"
  type        = number
   default     = 2
}

variable "max_size" {
  description = "The maximum number of EC2 Instances in the ASG"
  type        = number
   default     = 10
}

# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "server_port" {
  description = "The port the server will use for HTTP requests"
  type        = number
  default     = 8080
}




# ---------------------------------------------------------------------------------------------------------------------
# OPTIONAL PARAMETERS
# These parameters have reasonable defaults.
# ---------------------------------------------------------------------------------------------------------------------

variable "alb_name" {
  description = "The name of the ALB"
  type        = string
  default     = "terraform-asg-example"
}

variable "alb_security_group_name" {
  description = "The name of the security group for the ALB"
  type        = string
  default     = "terraform-example-alb"
}
variable "elb_port" {
  description = "default 8080 port"
  default     = 80
}
