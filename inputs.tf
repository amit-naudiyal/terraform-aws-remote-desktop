#---- VARIABLES ----

variable "aws_account_number" {}
variable "aws_region" {}
variable "vpc_id" {}
variable "cust_abbrev" {}
variable "soln_abbrev" {}
variable "env_abbrev" {}

variable "tier_archetype" {
  default = "application"
}

variable "tier_type" {
  default = "desktop"
}

variable "os_type" {
  type        = string
  description = "Specifies the OS type of the server"
  default     = "Windows"
}


variable "system_volume_size" {
  type        = number
  description = "Specifies the size in GB of the system volume"
  default     = 50
}

variable "data_volume_size" {
  type        = number
  description = "Specifies the size in GB of the data volume"
  default     = 100
}

variable "instance_type" {
  type        = string
  description = "Specifies the size of the OFS instances"
  default     = "m5.large"
}


variable "az_index" {
  type        = number
  description = "Represents the index of the availability zone to deploy the instance to"
  default     = 0
}
