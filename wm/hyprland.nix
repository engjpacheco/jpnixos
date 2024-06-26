{ inputs, pkgs, ... }:
{
  # Enable hyprland
  programs.hyprland = {
    enable = true;
  };

  # xdg.portal = {
  #   enable = true;
  #   wlr.enable = true;
  #   extraPortals = with pkgs; [
  #     xdg-desktop-portal-wlr
  #     xdg-desktop-portal-gtk
  #   ];
  # };

  wayland.windowManager.hyprland = {
    enable = true;
    # ...
    plugins = [
      inputs.hyprland-plugins.packages.${pkgs.system}.hyprbars
      # ...
    ];
  };

}
