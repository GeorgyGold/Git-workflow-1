# AWS Region
variable "region" {
  description = "Region in which AWS Resources to be created"
  type        = string
  default     = "us-east-2"
}

# AWS EC2 Instance Type
variable "instance_type" {
  description = "EC2 Instance Type"
  type        = string
  default     = "t3.small"
}

variable "ssh_key" {
  default = "DDChampwebsite-key.pem"
}

variable "ssh_key_pair" {
  default = ""
  type    = string
}

variable "ssh_private_pair" {
  default = ""
  type    = string
}

variable "fqdn" {
  default = "DDChampwebsite"
}

variable "sg_name" {
  default = "DDChamp-sg"
}

variable "key_name" {
  default = "DDChamp-key"
}

variable "domain" {
  default = "DDChamp.com"
}

# variable "aliases" {
#   type        = list(string)
#   description = "List of aliases"
# }

# variable "target_dns_name" {
#   type        = string
#   description = "DNS name of target resource (e.g. ALB, ELB)"
# }