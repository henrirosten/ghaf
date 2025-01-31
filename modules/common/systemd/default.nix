# Copyright 2022-2024 TII (SSRC) and the Ghaf contributors
# SPDX-License-Identifier: Apache-2.0
{ self, ... }:
{
  imports = builtins.trace "HENRI modules/common/systemd/default.nix: ${self.outPath}" [
    ./base.nix
    ./boot.nix
    ./harden.nix
  ];
}
