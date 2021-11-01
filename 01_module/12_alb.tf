# Application LoadBalancer Deploy
resource "aws_lb" "kmj_lb" {
  name                   = "kmj-alb"
  internal               = false
  load_balancer_type     = "application"
  security_groups        =  [aws_security_group.kmj_websg.id]
  subnets                =  [aws_subnet.kmj_puba.id,aws_subnet.kmj_pubc.id]
  
  tags = {
    Name  = "kmj-alb"
  }
}
