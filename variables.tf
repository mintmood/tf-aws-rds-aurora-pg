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

variable "min_acu" {
  type    = number
  default = 0.5
}

variable "max_acu" {
  type    = number
  default = 8
}

variable "tags" {
  type    = map(string)
  default = {}
}
