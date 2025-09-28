{ pkgs, ... }:
{
  # docker
  virtualisation.docker = {
    enable = true;
    rootless = {
      enable = true;
      setSocketVariable = true;
      daemon.settings.features.cdi = true;
    };
  };
  users.extraGroups.docker.members = [ "anulore" ];

  environment.systemPackages = with pkgs; [
    qemu
  ];

  programs.virt-manager.enable = true;

  users.groups.libvirtd.members = [ "anulore" ];

  virtualisation.libvirtd.enable = true;

  virtualisation.spiceUSBRedirection.enable = true;

  users.users.anulore.extraGroups = [ "kvm" ];
}
