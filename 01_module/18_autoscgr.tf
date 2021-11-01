resource "aws_placement_group" "kmj_pg" {
  name     = "kmj-pg"
  strategy = "cluster"
}

resource "aws_autoscaling_group" "kmj_atsg" {
  name                      = "kmj-atsg"
  min_size                  = 2
  max_size                  = 8
  health_check_grace_period = 300
  health_check_type         = "ELB"
  desired_capacity          = 2
  force_delete              = true
  launch_configuration      = aws_launch_configuration.kmj_lacf.name
  vpc_zone_identifier       = [aws_subnet.kmj_puba.id,aws_subnet.kmj_pubc.id]
}