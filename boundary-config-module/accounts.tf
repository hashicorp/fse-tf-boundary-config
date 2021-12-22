

resource "boundary_account_password" "zues" {
  name           = "zues"
  login_name     = "zues"
  description    = "global admin account for the other god of thunder"
  type           = "password"
  password       = "rootroot"
  auth_method_id = boundary_auth_method_password.global_pass.id
}

resource "boundary_account_password" "hermes" {
  name           = "hermes"
  login_name     = "hermes"
  description    = "globally scoped accounnt for a lesser diety"
  type           = "password"
  password       = "rootroot"
  auth_method_id = boundary_auth_method_password.global_pass.id
}
// organiation level group for the leadership team
resource "boundary_account_password" "hera" {
  name           = "hera"
  login_name     = "ares"
  description    = "global account for hera"
  type           = "password"
  password       = "rootroot"
  auth_method_id = boundary_auth_method_password.global_pass.id
}
resource "boundary_account_password" "ares" {
  name           = "ares"
  login_name     = "ares"
  description    = "global account for ares"
  type           = "password"
  password       = "rootroot"
  auth_method_id = boundary_auth_method_password.global_pass.id
}