# 豆包语音转文字（Ubuntu 22.04 / X11）

`doubao-murmur.flatpak` [下载链接](https://github.com/lilong7676/doubao-murmur/releases)

fork自github项目 [github-doubao-murmur](https://github.com/lilong7676/doubao-murmur?utm_source=chatgpt.com)

## install
首次安装时，在项目目录打开终端，依次运行下面的命令。

```bash
sudo apt install flatpak
flatpak remote-add --user --if-not-exists flathub https://flathub.org/repo/flathub.flatpakrepo
flatpak install --user ./doubao-murmur.flatpak
flatpak run com.doubao.Murmur
```

或者直接运行一键安装脚本：

```bash
./install.sh
```

弹出这个界面登录：

![豆包登录后的控制面板](images/murmur.png)

打开应用，点击「登录豆包」。光标放到输入框，按一下右 `Alt` 开始说话，再按一下结束。按 `Ctrl+V` 粘贴文字。

想自动粘贴，执行 `sudo apt install xdotool`。

使用 PS5 手柄麦克风时，先用 USB 连接手柄，然后打开 Ubuntu「设置 → 声音 → 输入」，选择手柄麦克风并确认输入音量有反应，再启动应用。应用使用系统当前的默认麦克风；如果列表里没有手柄，请检查连接，或改用 USB 连接。

想用 PS5 手柄按键启停录音：在 Steam 桌面布局把手柄按键映射为右 `Alt`。不用 Steam，可安装 Input Remapper：`sudo apt install input-remapper`，打开软件，选择 PS5 手柄，将按键映射为 `KEY_RIGHTALT` 并应用。

![Input Remapper 按键映射示例](images/keyboard_retargeting.png)


