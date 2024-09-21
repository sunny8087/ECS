resource "null_resource" "wait" {
  triggers = {
    task_def = aws_ecs_task_definition.flask-app.arn
  }

  provisioner "local-exec" {
    command = <<EOF
echo "Waiting for service to be stable: ${aws_ecs_service.flask-app.name} in cluster ${var.cluster}"
aws ecs wait services-stable --cluster ${var.cluster} --services ${aws_ecs_service.flask-app.name}
EOF
  }

  depends_on = [aws_ecs_service.flask-app]
}