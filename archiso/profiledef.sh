#!/usr/bin/env bash
# shellcheck disable=SC2034

iso_name="snigdhaos-arctic"
iso_label="snigdhaos-arctic-v5.0"
iso_publisher="Snigdha OS <https://snigdhaos.org>"
iso_application="Snigdha OS Live/Rescue CD"
iso_version="v5.0"
install_dir="arch"
buildmodes=('iso')
bootmodes=('bios.syslinux.mbr' 'bios.syslinux.eltorito'
           'uefi-ia32.grub.esp' 'uefi-x64.grub.esp'
           'uefi-ia32.grub.eltorito' 'uefi-x64.grub.eltorito')
arch="x86_64"
pacman_conf="pacman.conf"
airootfs_image_type="squashfs"
airootfs_image_tool_options=('-comp' 'xz' '-Xbcj' 'x86' '-b' '1M' '-Xdict-size' '1M')
file_permissions=(
  ["/etc/gshadow"]="0:0:600"
  ["/etc/shadow"]="0:0:600"
  ["/root"]="0:0:700"
  ["/root/.automated_script.sh"]="0:0:755"
  ["/etc/polkit-1/rules.d"]="0:0:750"
  ["/etc/sudoers.d"]="0:0:750"
  ["/etc/grub.d/40_custom"]="0:0:755"
  ["/etc/NetworkManager/dispatcher.d/09-timezone"]="0:0:755"
  ["/usr/local/bin/snigdhaos-snapper"]="0:0:755"
)
