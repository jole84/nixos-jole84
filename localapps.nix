{ config, pkgs, ... }: 
{
  # List packages installed in system profile:
  environment.systemPackages = with pkgs; [
    # distrobox
    # gdalMinimal
    # google-chrome
    # materia-kde-theme
    # materia-theme
    # musikcube
    # nodejs
    # papirus-icon-theme
    # rclone
    # toolbox
    # xdg-desktop-portal-gtk
    # yt-dlp
    ];
}