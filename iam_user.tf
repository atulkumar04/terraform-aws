resource "aws_iam_user" "my_iam_users"{

    count = 4
    name = "my_iam_user_${count.index}"
}