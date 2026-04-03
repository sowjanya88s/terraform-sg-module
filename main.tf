resource "aws_security_group" "roboshop" {
  name        = "${var.project}-${var.environment}-${var.sg_names}-sg"
  description = "sg for ${var.sg_names}"
  vpc_id      = var.vpc_id
  tags = merge(local.common_tags,
    {
    Name = "${var.project}-${var.environment}-${var.sg_names}"
  },
  var.sg_tags
  )


  egress {
    from_port        = 0
    to_port          = 0
    protocol         = "-1"
    cidr_blocks      = ["0.0.0.0/0"]
  }
}

