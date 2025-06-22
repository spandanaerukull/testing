resource "aws_instance" "this" {
  for_each = toset(var.instances)
  ami           = var.ami_id      
   instance_type = var.instance_type
  vpc_security_group_ids = var.sg_ids

  tags = {

    Name = each.value
    
  }
}