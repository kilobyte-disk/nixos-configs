{ config, lib, pkgs, ... }:

/* Intel CPU related configs */
{
  hardware.cpu.intel.updateMicrocode = true;
}


