resource "aws_security_group_rule" "frontend_alb" {
    type = "ingress"
    security_group_id = "sg-00ccedd6636eea797"
    source_security_group_id = "sg-0779a867567bce89a"
    from_port = 80
    protocol = "tcp"
    to_port = 80
}