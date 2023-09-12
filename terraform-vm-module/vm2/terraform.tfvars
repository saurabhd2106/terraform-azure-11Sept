resourcegroupName = "saurabh-rg"

  location = "East Europe"

  tags = {
    "env" : "test"
  }

  vnetName           = "myVnet-saurabh"
  subnetName         = "mySubnet"
  ipaddressName      = "myPublicIpAddress"
  virtualMachineName = "myVm1"
  diskSize           = "Standard_DS1_v2"
  nicName            = "myNic"
  nsgname            = "myNsg"