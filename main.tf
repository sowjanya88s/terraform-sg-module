resource "aws_security_group" "roboshop-mongodb" {
  name        = "${var.project}-${var.environment}-${var.component}-sg"
  description = "sg for ${var.component}"
  vpc_id      = var.vpc_id
  tags = merge(local.common_tags,
    {
    Name = "${var.project}-${var.environment}-${var.component}-sg"
  },
  var.mongodb_sg_tags
  )


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

