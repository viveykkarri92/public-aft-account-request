# Copyright Amazon.com, Inc. or its affiliates. All rights reserved.
# SPDX-License-Identifier: Apache-2.0
#
module "sandbox_account_01" {
  source = "./modules/aft-account-request"

  control_tower_parameters = {
    AccountEmail = "vivkarri+dec+network@amazon.com"
    AccountName  = "Network"
    # Syntax for top-level OU
    ManagedOrganizationalUnit = "Sandbox"
    # Syntax for nested OU
    # ManagedOrganizationalUnit = "Sandbox (ou-xfe5-a8hb8ml8)"
    SSOUserEmail     = "vivkarri@amazon.com"
    SSOUserFirstName = "Viveyk"
    SSOUserLastName  = "Karri"
  }

  change_management_parameters = {
    change_requested_by = "Viveyk Karri"
    change_reason       = "testing for DEC"
  }

  account_customizations_name = "Network"
}
