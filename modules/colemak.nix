{ lib, ... }:

with lib;

{
  options.colemak.enable = mkEnableOption "Enable all Colemak editor keybinding modules";
}
