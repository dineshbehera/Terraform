variable rgname {
  type        = string
  default     = "ntier"
  description = "Name of the resource group"
}


variable location  {
  type        = string
  default     = "EastUs"
  description = "location name"
}

variable vnet_cidr_range {
  type        = string
  default     = "192.168.0.0/16"
  description = "enter the vnet cidr range"
}

variable subnet_names {
  type        = list(string)
  default     = ["web","app","db","mgmt"]
  description = "subnet names"
}





