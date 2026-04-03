variable "project" {
    type = string
}

variable "component" {
    type = string
    default = "mongodb"
}

variable "environment" {
    type = string
}

variable "mongodb_sg_tags" {
    type = string
    default = {}
}

variable "vpc_id" {
    type = string
}