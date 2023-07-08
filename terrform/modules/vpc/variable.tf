variable "availability_zones" {
  description = "List of availability zones"
  type        = list(string)
  default     = ["eu-west-1a", "eu-west-1b", "eu-west-1c"]  # Add your desired availability zones
}
variable "vpc_cidr" {
  description = "VPC CIDR"
  type        = string 
}

variable "subnets" {
  description = "Map of availability zones to subnet CIDR blocks"
  type        = map(string)
  default = {
    "eu-west-1a" = "30.0.1.0/24"
    "eu-west-1b" = "30.0.2.0/24"
    "eu-west-1c" = "30.0.3.0/24"
  }
}

