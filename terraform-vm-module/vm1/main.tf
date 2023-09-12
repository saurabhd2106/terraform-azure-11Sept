module "vm1" {

  source            = "../virtual-machine-module"
  resourcegroupName = "saurabh-rg"

  location = "West Europe"

  tags = {
    "env" : "test"
  }

  vnetName           = "myVnet"
  subnetName         = "mySubnet"
  ipaddressName      = "myPublicIpAddress"
  virtualMachineName = "myVm1"
  diskSize           = "Standard_DS1_v2"
  nicName            = "myNic"
  nsgname            = "myNsg"
}