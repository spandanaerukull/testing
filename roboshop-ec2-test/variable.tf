variable "secruity_group_ids" {
  default = ["sg-067eff7d2042a32dc"]
}

variable "tags" {
  default = {
    Name = "roboshop-cart"
    terraform = "true"
    environment = "dev"
  }
}

variable "instance" {
  default = ["cart1", "catalogue2", "user3", "shipping4", "payment5", "frontend6"]
  
}

variable "instance_type" {
  default = "t3.medium"
}