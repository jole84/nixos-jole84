{ config, pkgs, ... }: 
{
  # List packages installed in system profile:
  environment.systemPackages = with pkgs; [
    # musikcube
    ];
}