# generate key pair and store the public key value in here
resource "aws_key_pair" "dove-key" {
  key_name   = "dove-key"
  public_key = "bla"
}

resource "aws_key_pair" "test-key" {
  key_name   = "test-key"
  public_key = "bla"
}
