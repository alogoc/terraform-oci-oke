# Copyright 2017, 2019, Oracle Corporation and/or affiliates.  All rights reserved.
# Licensed under the Universal Permissive License v 1.0 as shown at http://oss.oracle.com/licenses/upl

output "admin_private_ip" {
  value = join(",", data.oci_core_vnic.admin_vnic.*.private_ip_address)
}

output "admin_instance_principal_group_name" {
  value = oci_identity_dynamic_group.admin_instance_principal[0].name
}
