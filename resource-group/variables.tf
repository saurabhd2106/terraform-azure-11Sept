variable "rg-name" {

  type = string

  description = "Resource group name"

}

variable "location" {

  type = string

  default = "West Europe"

}

variable "envName" {

  type = string


}

variable "rg-names" {

  type = list(string)

  default = [  "my-rg-2", "my-rg-3" ]

}