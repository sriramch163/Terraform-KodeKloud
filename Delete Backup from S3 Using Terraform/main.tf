# Add your code below



resource "null_resource" "backup_s3_bucket" {
  provisioner "local-exec" {
    command = "aws s3 cp s3://xfusion-bck-27269 /opt/s3-backup/ --recursive"
  }
}


resource "null_resource" "delete_s3_bucket" {
  depends_on = [null_resource.backup_s3_bucket]

  provisioner "local-exec" {
    command = "aws s3 rb s3://xfusion-bck-27269 --force"
  }
}
