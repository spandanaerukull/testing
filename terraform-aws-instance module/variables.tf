variable "ami_id" {
  description = "AMI ID for the EC2 instance"
  type        = string
    default     = "ami-09c813fb71547fc4f"
}

variable "instances" {
  description = "List of instance names to be created"
  type        = list(string)
  
  
}

variable "instance_type" {
  description = "Type of the EC2 instance"
  type        = string
  default     = "t3.micro"


validation {
    condition     = contains(["t3.micro","t3.small", "t3.medium"], var.instance_type) # this is used for validation
    error_message = "valiad values for insance_type are t3.micro, t3.small, t3.medium" # only these values are allowed
}

}


variable "sg_ids" {
  type = list
}

variable "tags" {
  type = map
}