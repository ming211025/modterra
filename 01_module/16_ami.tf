resource "aws_ami_from_instance" "kmj_ami" {
    name            = "kmj-ami"
    source_instance_id = aws_instance.kmj_weba.id     
}