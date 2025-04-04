# Copyright 2022-2024 TII (SSRC) and the Ghaf contributors
# SPDX-License-Identifier: Apache-2.0
#
{
  buildGoModule,
  fetchFromGitHub,
}:
buildGoModule {
  pname = "dendrite-pinecone";
  version = "0.9.1";

  src = fetchFromGitHub {
    owner = "tiiuae";
    repo = "dendrite";
    # branch is feature/ghaf-integration
    rev = "d8e62f3d1bf6607d243c53673fc02064fed863e8";
    sha256 = "sha256-GtaFDfXssym3eNrTSOB8JW2awIvZsTGdUPdLL+ae7Pw=";
  };
  subPackages = [ "cmd/dendrite-demo-pinecone" ];
  # patches = [./turnserver-crendentials-flags.patch];

  vendorHash = "sha256-599pZlX7SdUYOmGnYGIngyPKagIxri6KKJh+e5UDBps=";

  meta = {
    description = "Point-to-point messaging server for Matrix";
    platforms = [
      "aarch64-linux"
      "x86_64-linux"
    ];
  };
}
