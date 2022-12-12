module "child" {
  source = "./child"

  memory = "1G"
}

output "child_memroy" {
  value = module.child.received
}