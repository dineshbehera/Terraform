# variable region 
variable region {
  type        = string
  default     = "us-east-2"
  description = "target region for creating resources"
}

# variable cidr 
variable vpc_cidr {
  type        = string
  default     = "192.168.0.0/16"
  description = "target region for creating resources"
}

# variable Az's
variable availability_zones {
  type        = list(string)
  default     = ["a","b","c","a"]
  description = "az's"
}

# variable subnet_tags
variable subnet_tags {
  type        = list(string)
  default     = ["web","app","db","mgmt"]
  description = "subnet tags"
}

# variable vpc_tag
variable vpc_tag {
  type        = string
  default     = "vpc-from-teraform"
  description = "vpc tag"
}



