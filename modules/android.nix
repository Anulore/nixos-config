{ ... }:
{
  programs.adb.enable = true;
  users.users.anulore.extraGroups = [ "adbusers" ];
}
