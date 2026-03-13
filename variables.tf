variable "ec2_instance_type" {
  default     = "t2.micro"
  description = "Default EC2 instance type"
  type        = string
}

variable "ec2_root_storage_size" {
  default     = 30
  description = "Root storage size in GB"
  type        = number
}

variable "ec2_ami_id" {
  default     = "ami-0b0b78dcacbab728f" # Amazon Linux 2
  description = "EC2 AMI ID"
  type        = string
}