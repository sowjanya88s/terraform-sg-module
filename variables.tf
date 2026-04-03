variable "project" {
    type = string
}

variable "sg_names" {
    type = list
}

variable "environment" {
    type = string
}

variable "mongodb_sg_tags" {
    type = map
    default = {}
}

variable "vpc_id" {
    type = string
}