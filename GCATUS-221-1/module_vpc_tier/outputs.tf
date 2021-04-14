##############################################################################
# Outputs
##############################################################################

output subnet_ids {
  description = "IDs of subnets created for this tier"
  value       = ibm_is_subnet.subnet.*.id
}  

output subnet_detail_list {
  value       = [ 
    for i in ibm_is_subnet.subnet: {
      name = i.name
      id   = i.id
      zone = i.zone
      cidr = i.ipv4_cidr_block
    }
  ]
}

##############################################################################