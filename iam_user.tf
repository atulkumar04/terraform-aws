resource "aws_iam_user" "my_iam_users"{

    count = length(var.names)
    name = var.names[count.index]
}