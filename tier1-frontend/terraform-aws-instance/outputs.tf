output "public_ip"{
    value = aws_instance.this.public_ip
    description = "public ip of instance created"
}

output "private_ip"{
    value = aws_instance.this.private_ip
    description = "private ip of instance created"
}
output "instance_id"{
    value = aws_instance.this.instance_id
}