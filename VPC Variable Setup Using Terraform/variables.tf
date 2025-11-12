variable "KKE_vpc" {
  description = "The name of the VPC"
  type        = string
  default     = "xfusion-vpc"
}

variable "vpc_cidr" {
  description = "The CIDR block for the VPC"
  type        = string
  default     = "10.0.0.0/16"
}