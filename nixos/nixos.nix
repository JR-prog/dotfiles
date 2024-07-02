# Edit this configuration file to define what should be installed on
# your system.  Help is available in the configuration.nix(5) man page
# and in the NixOS manual (accessible by running ‘nixos-help’).

{ config, pkgs, ... }:

{
  imports =
    [
      ./audio.nix
      ./gnome.nix
      ./hardware-configuration.nix
      ./locale.nix
      ./system.nix
    ];

  # Enable the Desktop Environment.
  gnome.enable = true;

  # Define a user account. Don't forget to set a password with ‘passwd’.
  users.users.jay = {
    isNormalUser = true;
    description = "jay";
    extraGroups = [ 
      "networkmanager" 
      "wheel" 
      "docker"
      "libvirtd"
    ];
  };

}
