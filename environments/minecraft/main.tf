module "minecraftpanel1001" {
  source = "../../modules/vm"

  name        = "minecraftpanel1001"
  target_node = "kitsune"
  desc        = "minecraft panel"
  memory      = 1024*2
  startup     = "order=5,up=60,down=60"
  ipconfig0   = "ip=10.210.30.31/24,gw=10.210.0.1"
  storage     = "Synology-01-LUN-01"
  cores       = 2
  size        = "40G"
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}

module "minecraftproxy1001" {
  source = "../../modules/lxc"

  hostname       = "minecraftproxy1001"
  target_node    = "kitsune"
  memory         = 2048
  swap           = 8192
  network_ip     = "10.210.30.101/24"
  rootfs_size    = "8G"
  rootfs_storage = "Synology-01-LUN-01"
  nesting        = true
}

module "minecraft1001" {
  source = "../../modules/vm"

  name        = "minecraft1001"
  target_node = "kitsune"
  desc        = "ptero"
  memory      = 1024*4
  startup     = "order=5,up=60,down=60"
  ipconfig0   = "ip=10.210.30.1/24,gw=10.210.0.1"
  storage     = "local-lvm"
  cores       = 4
  size        = "50G"
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}

module "minecraft1002" {
  source = "../../modules/vm"

  name        = "minecraft1002"
  target_node = "kitsune"
  desc        = "ptero"
  memory      = 1024*12
  startup     = "order=5,up=60,down=60"
  ipconfig0   = "ip=10.210.30.2/24,gw=10.210.0.1"
  storage     = "local-lvm"
  cores       = 4
  size        = "200G"
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}

module "minecraft1005" {
  source = "../../modules/vm"

  name        = "minecraft1005"
  target_node = "kitsune"
  desc        = "backend-res-1"
  memory      = 1024*8
  startup     = "order=5,up=60,down=60"
  ipconfig0   = "ip=10.210.30.5/24,gw=10.210.0.1"
  storage     = "Synology-01-LUN-01"
  cores       = 4
  size        = "128G"
  vmid        = 108
  full_clone  = false
  cicustom    = "user=local:snippets/user-data.yaml"
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}


module "minecraft1006" {
  source = "../../modules/vm"

  name        = "minecraft1006"
  target_node = "kitsune"
  desc        = "backend-vanilla-1"
  memory      = 1024*8
  startup     = "order=5,up=60,down=60"
  ipconfig0   = "ip=10.210.30.6/24,gw=10.210.0.1"
  storage     = "local-lvm"
  cores       = 4
  size        = "126G"
  vmid        = 110
  full_clone  = false
  ciuser      = var.ciuser
  cipassword  = var.cipassword
}
