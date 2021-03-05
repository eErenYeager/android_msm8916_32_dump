#!/system/bin/sh
if ! applypatch -c EMMC:/dev/block/bootdevice/by-name/recovery:20256044:361b3d1d02bb27b12c33b126b1921bccfe2272a4; then
  applypatch -b /system/etc/recovery-resource.dat EMMC:/dev/block/bootdevice/by-name/boot:17792296:98cbbb96953074ce467555afdaff7ccdba4cffa4 EMMC:/dev/block/bootdevice/by-name/recovery 361b3d1d02bb27b12c33b126b1921bccfe2272a4 20256044 98cbbb96953074ce467555afdaff7ccdba4cffa4:/system/recovery-from-boot.p && log -t recovery "Installing new recovery image: succeeded" || log -t recovery "Installing new recovery image: failed"
else
  log -t recovery "Recovery image already installed"
fi
