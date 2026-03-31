data "aws_ami" "joindevops" {
    owners = [ "amazon" ]
    most_recent = true

    filter {
        name = "name"
        values = ["Redhat-9-DevOps-Practice"]
    }
    filter {
        name = "root-device-type"
        values = ["ebs"]
    }
    filter {
        name = "virtualization-type"
        values = ["hvm"]
    }
}
data "aws_ssm_parameter" "bastion_sg_id" {
    name = "/${var.project_name}/${var.environment}/bastion_sg_id"
}
data "aws_ssm_parameter" "public_sg_id" {
     name = "/${var.project_name}/${var.environment}/public_sg_id"
}
