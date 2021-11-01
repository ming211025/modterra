resource "aws_lb_target_group_attachment" "kmj_lbtg_att" {
  target_group_arn = aws_lb_target_group.kmj_lbtg.id
  target_id = aws_instance.kmj_weba.id
  port = 80 
}