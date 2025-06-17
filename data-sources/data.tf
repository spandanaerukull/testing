data "aws_ami" "joindevops"{
    filter {
      name = "name"
    values = ["RHEL-9-Devops-practice"]

    }

    
  
}

output "ami_id" {
    value  = data.aws_ami.joindevops
}