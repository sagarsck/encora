resource "aws_lb" "alb_1" {
  name = "application-load-balancer"
  load_balancer_type = "application"
  vpc_id = aws_vpc.myvpc.id

  subnets = ["subnet-12345678", "subnet-87654321"]

 
}
resource "aws_lb_listener" "example" {
  load_balancer_arn = aws_lb.alb_1.arn
  port              = "80"
  protocol          = "HTTP"

  default_action {
    type             = "forward"
    target_group_arn = aws_lb_target_group.target_1.arn
  }
}