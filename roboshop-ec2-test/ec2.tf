module "ec2" {
  source = "../terraform-aws-instance module"
   sg_ids = var.secruity_group_ids
  tags = var.tags
  instances = var.instance
 }
       