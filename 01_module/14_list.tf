resource "aws_lb_listener" "kmj_lblist" {
    load_balancer_arn = aws_lb.kmj_lb.arn
    port = 80
    protocol = "HTTP"
    
    default_action {
      type        = "forward"
      target_group_arn = aws_lb_target_group.kmj_lbtg.arn 
     }    
    }