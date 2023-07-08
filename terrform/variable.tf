variable "aws_region" {
  description = "AWS region"
  type        = string
  default     = "eu-west-1"
}

variable "az" {
  description = "List of availability zones"
  type        = list(string)
  default   = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]
}