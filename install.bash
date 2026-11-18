sudo apt install flatpak
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user ./doubao-murmur.flatpak
flatpak run com.doubao.Murmur