# generate key pair and store the public key value in here
resource "aws_key_pair" "dove-key" {
  key_name   = "dove-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIMXnFOKZaZtYs3+jQo5RfievUbrd8E0VXwP6k2vq9cbX Administrator@DESKTOP-FCQQ0BG"
}

resource "aws_key_pair" "test-key" {
  key_name   = "test-key"
  public_key = "ssh-ed25519 AAAAC3NzaC1lZDI1NTE5AAAAIKZo34fERTGa1oIpURoY4GlYos+oHFhKWxPRTrlTSAAV Administrator@DESKTOP-FCQQ0BG"
}