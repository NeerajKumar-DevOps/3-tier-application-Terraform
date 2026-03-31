module "catalog"{ 
    source = "../terraform-aws-instance"
   /*  ami_id = "ami-0220d79f3f480ecf5"
    sg_id = ["sg-082a5c752ec487555"]
    instance_type = "t3.micro"
    tags = {
    Name = "module-demo"
    } */
    ami_id = var.ami_id
    sg_ids = var.sg_ids
    instance_type = var.instance_type
    tags = var.tags
}

output "public_ip" {
    value = module.catalog.public_ip
}

output "private_ip" {
    value = module.catalog.private_ip
}

output "id"{
    value = module.catalog.instance_id
}