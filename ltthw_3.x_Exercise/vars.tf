variable "object1" {
  type = object({
    id          = number
    name        = string
    description = string
    object2 = object({
      id          = number
      name        = string
      description = string
    })
  })
}
