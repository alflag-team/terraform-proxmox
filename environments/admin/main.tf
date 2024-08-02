module "admin1001" {
  source = "../../modules/vm"

  name        = "admin1001"
  target_node = "kitsune"
  memory      = 1024 * 2
  startup     = "order=3,up=60,down=60"
  ipconfig0   = "ip=10.210.6.1/24,gw=10.210.0.1"
  storage     = "hdd-01"
  cores       = 2
  size        = "32G"
  vmid        = 102
  full_clone  = false
  cicustom    = "user=local:snippets/user-data.yaml"
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}
