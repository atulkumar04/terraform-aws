provider "aws"{
    region = "ap-south-1"
}

resource "aws_s3_bucket" "my_s3_bucket"{

    bucket = "my-s3-bucket-atul-1234"

}

resource "aws_s3_bucket_versioning" "versioning_example"{

    bucket = aws_s3_bucket.my_s3_bucket.id
    versioning_configuration{
        status = "Enabled"
    }
}