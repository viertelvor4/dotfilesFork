# GNOME extension to move bar to bottom


######## desktop ###########
gsettings set org.gnome.desktop.wm.preferences theme 'Numix'
gsettings set org.gnome.desktop.wm.preferences focus-new-windows 'smart'
gsettings set org.gnome.desktop.wm.preferences raise-on-click true
gsettings set org.gnome.desktop.wm.preferences num-workspaces 2
gsettings set org.gnome.desktop.wm.preferences disable-workarounds false
gsettings set org.gnome.desktop.wm.preferences titlebar-uses-system-font false
gsettings set org.gnome.desktop.wm.preferences titlebar-font 'Ubuntu Bold 11'
gsettings set org.gnome.desktop.wm.preferences mouse-button-modifier '<Super>'
gsettings set org.gnome.desktop.wm.preferences auto-raise false
gsettings set org.gnome.desktop.wm.preferences action-middle-click-titlebar 'lower'
gsettings set org.gnome.desktop.wm.preferences resize-with-right-button false
gsettings set org.gnome.desktop.wm.preferences action-right-click-titlebar 'menu'
gsettings set org.gnome.desktop.wm.preferences action-double-click-titlebar 'toggle-maximize'
gsettings set org.gnome.desktop.wm.preferences workspace-names @as []
gsettings set org.gnome.desktop.wm.preferences visual-bell-type 'fullscreen-flash'
gsettings set org.gnome.desktop.wm.preferences focus-mode 'click'
gsettings set org.gnome.desktop.wm.preferences button-layout ':appmenu,minimize,maximize,close'
gsettings set org.gnome.desktop.wm.preferences auto-raise-delay 500
gsettings set org.gnome.desktop.wm.preferences audible-bell true
gsettings set org.gnome.desktop.wm.preferences visual-bell false

######## desktop background ##########
gsettings set org.gnome.desktop.background picture-options 'zoom'
gsettings set org.gnome.desktop.background primary-color '#000000'
gsettings set org.gnome.desktop.background show-desktop-icons true
gsettings set org.gnome.desktop.background picture-uri 'file:///usr/share/backgrounds/System76-Fractal_Mountains-by_Kate_Hazen_of_System76.png'
gsettings set org.gnome.desktop.background color-shading-type 'solid'
gsettings set org.gnome.desktop.background draw-background true
gsettings set org.gnome.desktop.background picture-opacity 100
gsettings set org.gnome.desktop.background secondary-color '#000000'

######## desktop interface ##########
gsettings set org.gnome.desktop.interface gtk-color-palette 'black:white:gray50:red:purple:blue:light blue:green:yellow:orange:lavender:brown:goldenrod4:dodger blue:pink:light green:gray10:gray30:gray75:gray90'
gsettings set org.gnome.desktop.interface toolkit-accessibility false
gsettings set org.gnome.desktop.interface can-change-accels false
gsettings set org.gnome.desktop.interface text-scaling-factor 1.0
gsettings set org.gnome.desktop.interface cursor-blink true
gsettings set org.gnome.desktop.interface menus-have-icons false
gsettings set org.gnome.desktop.interface icon-theme 'Numix-Circle-Light'
gsettings set org.gnome.desktop.interface gtk-im-preedit-style 'callback'
gsettings set org.gnome.desktop.interface menus-have-tearoff false
gsettings set org.gnome.desktop.interface scaling-factor uint32 0
gsettings set org.gnome.desktop.interface cursor-size 24
gsettings set org.gnome.desktop.interface automatic-mnemonics true
gsettings set org.gnome.desktop.interface buttons-have-icons false
gsettings set org.gnome.desktop.interface gtk-timeout-initial 200
gsettings set org.gnome.desktop.interface gtk-im-module 'gtk-im-context-simple'
gsettings set org.gnome.desktop.interface gtk-theme 'Numix'
gsettings set org.gnome.desktop.interface clock-show-seconds false
gsettings set org.gnome.desktop.interface clock-show-weekday false
gsettings set org.gnome.desktop.interface clock-show-date true
gsettings set org.gnome.desktop.interface cursor-blink-time 1200
gsettings set org.gnome.desktop.interface gtk-color-scheme ''
gsettings set org.gnome.desktop.interface toolbar-icons-size 'large'
gsettings set org.gnome.desktop.interface gtk-timeout-repeat 20
gsettings set org.gnome.desktop.interface toolbar-style 'both-horiz'
gsettings set org.gnome.desktop.interface monospace-font-name 'Ubuntu Mono 13'
gsettings set org.gnome.desktop.interface cursor-blink-timeout 10
gsettings set org.gnome.desktop.interface show-unicode-menu true
gsettings set org.gnome.desktop.interface gtk-key-theme 'Default'
gsettings set org.gnome.desktop.interface toolbar-detachable false
gsettings set org.gnome.desktop.interface cursor-theme 'Yaru'
gsettings set org.gnome.desktop.interface show-input-method-menu true
gsettings set org.gnome.desktop.interface menubar-detachable false
gsettings set org.gnome.desktop.interface gtk-im-status-style 'callback'
gsettings set org.gnome.desktop.interface document-font-name 'Sans 11'
gsettings set org.gnome.desktop.interface menubar-accel 'F10'
gsettings set org.gnome.desktop.interface clock-format '24h'
gsettings set org.gnome.desktop.interface enable-animations true
gsettings set org.gnome.desktop.interface gtk-enable-primary-paste true
gsettings set org.gnome.desktop.interface font-name 'Ubuntu 11'
gsettings set org.gnome.desktop.interface show-battery-percentage true

######## desktop icons #########
gsettings set org.gnome.shell.extensions.desktop-icons show-trash true
gsettings set org.gnome.shell.extensions.desktop-icons icon-size 'small'
gsettings set org.gnome.shell.extensions.desktop-icons show-home true

######## login screen ########
gsettings set org.gnome.login-screen allowed-failures 3
gsettings set org.gnome.login-screen logo '/usr/share/plymouth/ubuntu-logo.png'
gsettings set org.gnome.login-screen fallback-logo ''
gsettings set org.gnome.login-screen banner-message-text ''
gsettings set org.gnome.login-screen disable-restart-buttons false
gsettings set org.gnome.login-screen enable-fingerprint-authentication true
gsettings set org.gnome.login-screen enable-smartcard-authentication true
gsettings set org.gnome.login-screen disable-user-list false
gsettings set org.gnome.login-screen banner-message-enable false
gsettings set org.gnome.login-screen enable-password-authentication true

####### workspaces #######
gsettings set org.gnome.mutter overlay-key 'Super_L'
gsettings set org.gnome.mutter focus-change-on-pointer-rest true
gsettings set org.gnome.mutter draggable-border-width 10
gsettings set org.gnome.mutter experimental-features @as []
gsettings set org.gnome.mutter dynamic-workspaces false
gsettings set org.gnome.mutter center-new-windows false
gsettings set org.gnome.mutter auto-maximize true
gsettings set org.gnome.mutter attach-modal-dialogs true
gsettings set org.gnome.mutter edge-tiling true
gsettings set org.gnome.mutter workspaces-only-on-primary false
gsettings set org.gnome.mutter no-tab-popup false
gsettings set org.gnome.mutter.keybindings tab-popup-cancel @as []
gsettings set org.gnome.mutter.keybindings tab-popup-select @as []
gsettings set org.gnome.mutter.keybindings toggle-tiled-right ['<Super>Right']
gsettings set org.gnome.mutter.keybindings toggle-tiled-left ['<Super>Left']
gsettings set org.gnome.mutter.keybindings rotate-monitor ['XF86RotateWindows']
gsettings set org.gnome.mutter.keybindings switch-monitor ['<Super>p', 'XF86Display']
