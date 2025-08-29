
variable "key_pair_name" {
  
  description = "This is for key name"
  type = string
}

variable "sg_name" {
  
  description = "This is for rg"
  type = string
}

variable "ec2_count" {
  
  description = "This is for ec2 count"
  type = number
}

variable "ec2_inst_type" {
  
  description = "This is for ec2 inst type"
  type = string
}

variable "ec2_ami" {
  
  description = "This is for ec2 ami"
  type = string
}

variable "ec2_vol_size" {
  
  description = "This is for ec2 volume size"
  type = number
}

variable "ec2_vol_type" {
  
  description = "This is for ec2 volume type"
  type = string
}

variable "ec2_inst_name" {
  
  description = "This is for ec2 inst name"
  type = string
}