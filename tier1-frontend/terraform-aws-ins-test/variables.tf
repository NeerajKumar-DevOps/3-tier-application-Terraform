variable "ami_id" {
    default = "ami-0220d79f3f480ecf5"
}
variable "sg_ids" {
    default = ["sg-082a5c752ec487555"]
}
variable "instance_type"{
    default = "t3.micro"
}
variable "tags" {
    default = {
        Name = "module_demo"
    }
}