{ config, lib, pkgs, ... }:

/* Radeon HD 8730M (Mars, GCN 1.0) */
{
  hardware.graphics = {
    enable = true;
    enable32Bit = true;
  };

  #boot.kernelParams = [ "radeon.si_support=0" "amdgpu.si_support=1" ];
}
