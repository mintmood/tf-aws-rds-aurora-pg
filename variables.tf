variable "name" {
  type = string
}

variable "vpc_id" {
  type = string
}

variable "subnet_ids" {
  type = list(string)
}

variable "allowed_cidr_blocks" {
  type    = list(string)
  default = []
}

variable "engine_version" {
  type    = string
  default = "16.4"
}

variable "database_name" {
  type    = string
  default = "app"
}

variable "master_username" {
  type    = string
  default = "postgres"
}

variable "instance_count" {
  type    = number
  default = 2
}

variable "min_acu" {
  type    = number
  default = 0.5
}

variable "max_acu" {
  type    = number
  default = 8
}

variable "backup_retention_days" {
  type    = number
  default = 7
}

variable "deletion_protection" {
  type    = bool
  default = true
}

variable "skip_final_snapshot" {
  type    = bool
  default = false
}

variable "tags" {
  type    = map(string)
  default = {}
}
