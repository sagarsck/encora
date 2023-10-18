resource "aws_lb_target_group" "target_1" {
  name = "target_1"
  port = 80
  protocol = "HTTP"
  vpc_id = aws_vpc.myvpc.id

  health_check {
    path = "/"
    port = 80
    protocol = "HTTP"
  }
}
resource "aws_lb_target_group_attachment" "target_1_attach" {
  target_group_arn = aws_lb_target_group.target_1.arn
  target_id        = aws_instance.example.id
  port             = 80
}