locals {
    common_tags = {
        project = var.project
        default = var.environment
        terraform = "true"
    }
}