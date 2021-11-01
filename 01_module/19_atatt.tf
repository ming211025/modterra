resource "aws_autoscaling_attachment" "kmj_atatt" {
  autoscaling_group_name = aws_autoscaling_group.kmj_atsg.id
  alb_target_group_arn   = aws_lb_target_group.kmj_lbtg.arn
}