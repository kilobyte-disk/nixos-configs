{ config, lib, pkgs, ... }:

/* AMD CPU specific configs */
{
  hardware.cpu.amd.updateMicrocode = true;
}
