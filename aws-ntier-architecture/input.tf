# variable region 
variable region {
  type        = string
  default     = "us-east-2"
  description = "target region for creating resources"
}

# variable cidr 
variable primary_network_cidr {
  type        = string
  default     = "10.10.0.0/16"
  description = "target region for creating resources"
}


# variable primary_subnets
variable primary_subnets {
  type        = list(string)
  default     = ["web","app","db","mgmt"]
  description = "subnet names for primary"
}