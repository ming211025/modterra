resource "aws_lb_target_group" "kmj_lbtg" {
    name  = "kmj-lbtg"
    port = 80
    protocol = "HTTP"
    vpc_id = aws_vpc.kmj_vpc.id 

    health_check {
      enabled           = true
      healthy_threshold = 3
      interval = 5
      matcher = "200"
      path = "/health.html" 
      port = "traffic-port"
      protocol = "HTTP"
      timeout = 2
      unhealthy_threshold = 2

    }
}