variable "project_name" {
    default = "spacex"
}
variable "environment" {
    default = "dev"
}
variable "sg_names" {
    default = [
        #databases
        "mongodb","redis","mysql","rabbitmq",
        #backend
        "catalogue","user","cart","shipping","payment",
        #frontend
        "frontend",
        #bastion
        "bastion",
        #frontend-lb
        "frontend_alb",
        #backend-ALB
        "backend_alb"
    ]
}