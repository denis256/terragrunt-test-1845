locals {
  path = run_cmd("echo", "path_relative_to_inclue:", path_relative_to_include())
}

generate "test" {
  path      = "test.tf"
  if_exists = "overwrite_terragrunt"

  contents = <<-EOF
    # local.path: ${local.path}
  EOF
}