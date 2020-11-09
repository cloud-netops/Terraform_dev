output "instance1_id" {
  value = element(aws_instance.Tinstance.*.id, 1)
}

output "instance2_id" {
  value = element(aws_instance.Tinstance.*.id, 2)
}
output "subnet1" {
  value = element(aws_subnet.public.*.id, 1 )
}

output "subnet2" {
  value = element(aws_subnet.public.*.id, 2 )
}
output "vpc_id" {
  value = aws_vpc.terra_vpc.id
}
output "alb_dns_name" {
  value = "${aws_lb.my-aws-alb.dns_name}"
}

output "alb_target_group_arn" {
  value = "${aws_lb_target_group.my-target-group.arn}"
}
