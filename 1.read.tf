locals {
  raw_data     = jsondecode(file("output.json"))
  event_topics = local.raw_data
}

output "cidrs" {
  value = local.event_topics.items[*].cidr
}

