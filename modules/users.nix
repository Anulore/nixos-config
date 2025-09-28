{ config, pkgs, ... }:
{
  # sops.secrets.my-password.neededForUsers = true;
  # sops.secrets.root-password.neededForUsers = true;

  # users.users.root.hashedPasswordFile = config.sops.secrets.root-password.path;
  users.users.root.hashedPassword = "$y$j9T$8Qa0wqcecNRvzgjbe3XXM/$gbNbnOb2x5Nm5yObSX2kGXR6J5aez5b6KDMfTmkKjWD";
  
  users.users.anulore = {
    isNormalUser = true;
    description = "anulore";
    extraGroups = [
      "networkmanager"
      "input"
      "wheel"
      "video"
      "audio"
      "tss"
      "docker"
    ];
    shell = pkgs.fish;
    packages = with pkgs; [
      yazi
      neovim
    ];

    # hashedPasswordFile = config.sops.secrets.my-password.path;
    hashedPassword = "$y$j9T$ZfsP8ie8XK.RrWZKkyjYY/$TBlGEZGagr4irs7gqjJgS4tkVefD0RjOCyOE4MJCQeB";
  };

  programs.fish.enable = true;
  programs.kdeconnect.enable = true;
}
