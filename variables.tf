# variables.tf

variable "aws_region" {
  description = "The AWS region things are created in"
  default     = "us-east-2"
}

variable "app_image" {
  description = "Docker image to run in the ECS cluster"
  default     = "203261016281.dkr.ecr.us-east-2.amazonaws.com/myapp:latest"
}

variable "app_port" {
  description = "Port exposed by the docker image to redirect traffic to"
  default     = 3000
}

variable "app_count" {
  description = "Number of docker containers to run"
  default     = 1
}

variable "ecs_instance_type" {
  description = "which instance size to run"
  default     = "t2.micro"
}

variable "ecs_amis" {
  description = "Which version of the instance"
  type        = "map"
  default     = {
    us-east-2 = "ami-0001ca554754ce87f"
  }
}
