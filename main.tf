provider "aws"{
    region = "ap-south-1"
}

resource "aws_s3_bucket" "my_s3_bucket"{

    bucket = "my-s3-bucket-atul-12345"

}

resource "aws_s3_bucket_versioning" "versioning_example"{

    bucket = aws_s3_bucket.my_s3_bucket.id
    versioning_configuration{
        status = "Enabled"
    }
}

resource "aws_iam_user" "my_iam_user"{

    name = "terraform_test_user_changed"
}

output "my_s3_bucket_versioning"{

    value = aws_s3_bucket.my_s3_bucket.versioning[0].enabled


}

output "my_iam_user_complete_details"{

    value = aws_iam_user.my_iam_user


}




