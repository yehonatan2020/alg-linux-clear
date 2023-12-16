#rm -rf /usr/lib/modules-load.d/nvidia-utils.conf
rm -rf usr/lib/modprobe.d/nvidia-utils.conf
sed -i 's/HOOKS=(base udev*/& plymouth/' /etc/mkinitcpio.conf 
sudo plymouth-set-default-theme -R arch-glow 
sudo pacman-key --init 
sudo pacman-key --populate archlinux
sudo pacman-key --populate chaotic
sudo pacman -Sy
sudo pacman --noconfirm -U root/aarch64-linux-gnu-glibc/aarch64-linux-gnu-glibc-2.38-1-any.pkg.tar.zst && rm -rf root/aarch64-linux-gnu-glibc
sudo pacman --noconfirm -U root/alg-cala-config/cala-config-clear-linux.tar && rm -rf root/alg-cala-config
sudo pacman --noconfirm -U root/android-sdk-platform-tools/android-sdk-platform-tools-33.0.3-1-x86_64.pkg.tar.lzo && rm -rf root/android-sdk-platform-tools
sudo pacman --noconfirm -U root/android-udev-git/android-udev-git-20220903.r3.gac87fda-1-any.pkg.tar.lzo && rm -rf root/android-udev-git
sudo pacman --noconfirm -U root/asp/asp-8-1-any.pkg.tar.lzo && rm -rf root/asp
sudo pacman --noconfirm -U root/lib32-ncurses5-compat-libs/lib32-ncurses5-compat-libs-6.3-1-x86_64.pkg.tar.lzo && rm -rf root/lib32-ncurses5-compat-libs
sudo pacman --noconfirm -U root/newflasher-git/newflasher-git-194-1-x86_64.pkg.tar.lzo && rm -rf root/newflasher-git
sudo pacman --noconfirm -U root/payload-dumper-go-bin/payload-dumper-go-bin-1.2.2-1-x86_64.pkg.tar.lzo && rm -rf root/payload-dumper-go-bin

rm -rf usr/bin/baloo_file
rm -rf usr/bin/baloo_file_extractor
rm -rf usr/bin/baloo_filemetadata_temp_extractor
rm -rf usr/bin/balooctl
rm -rf usr/bin/baloosearch
rm -rf usr/bin/balooshow
rm -rf usr/lib/baloo_file
rm -rf usr/lib/libexec/baloo_file
rm -rf usr/lib/baloo_file_extractor
rm -rf usr/lib/libexec/baloo_file_extractor
rm -rf usr/lib/baloorunner
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/avahi-discover.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/bssh.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/stoken-gui.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/stoken-gui-small.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/bvnc.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/cmake-gui.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/qv4l2.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/qvidcap.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/htop.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/vim.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/org.kde.klipper.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/designer.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/assistant.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/linguist.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/qdbusviewer.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/lstopo.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/guake-prefs.desktop
sudo sed -i -e '$aNoDisplay=true' /usr/share/applications/org.kde.kmenuedit.desktop
sudo systemctl enable hv_fcopy_daemon.service
sudo systemctl enable hv_kvp_daemon.service
sudo systemctl enable hv_vss_daemon.service
sudo systemctl enable tlp.service
sudo systemctl enable fstrim.timer
sudo systemctl enable earlyoom.service 
sudo systemctl enable cronie.service 
sudo systemctl enable apparmor.service 
sudo systemctl enable sddm.service -f
sudo systemctl enable cups
sudo gpasswd -a liveuser autologin
sudo pacman-key --init
sudo pacman-key --populate archlinux
sudo pacman-key --populate chaotic
sudo pacman --noconfirm -Syu
sudo pacman --noconfirm -S ncurses5-compat-libs openssl-1.1 lib32-vulkan-icd-loader gtk-engine-murrine
echo "blacklist elan_i2c" >> /etc/modprobe.d/blacklist.conf
