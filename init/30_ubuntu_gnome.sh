# GNOME extension to move bar to bottom
sudo apt install -y gnome-tweaks chrome-gnome-shell
git clone https://github.com/home-sweet-gnome/dash-to-panel.git panel
cd panel && make install
cd ..
rm -rf panel
gnome-shell-extension-tool -e dash-to-panel


######### keybindings #########
gsettings set org.gnome.shell.keybindings switch-to-application-1 ['<Super>1']
gsettings set org.gnome.shell.keybindings pause-resume-tweens @as []
gsettings set org.gnome.shell.keybindings switch-to-application-7 ['<Super>7']
gsettings set org.gnome.shell.keybindings open-application-menu ['<Super>F10']
gsettings set org.gnome.shell.keybindings switch-to-application-6 ['<Super>6']
gsettings set org.gnome.shell.keybindings switch-to-application-5 ['<Super>5']
gsettings set org.gnome.shell.keybindings toggle-application-view ['<Super>a']
gsettings set org.gnome.shell.keybindings focus-active-notification ['<Super>n']
gsettings set org.gnome.shell.keybindings switch-to-application-4 ['<Super>4']
gsettings set org.gnome.shell.keybindings switch-to-application-3 ['<Super>3']
gsettings set org.gnome.shell.keybindings switch-to-application-9 ['<Super>9']
gsettings set org.gnome.shell.keybindings switch-to-application-2 ['<Super>2']
gsettings set org.gnome.shell.keybindings switch-to-application-8 ['<Super>8']
gsettings set org.gnome.shell.keybindings toggle-message-tray ['<Super>v', '<Super>m']
gsettings set org.gnome.shell.keybindings toggle-overview ['<Super>s']
gsettings set org.gnome.desktop.wm.keybindings switch-group ['<Super>Above_Tab', '<Alt>Above_Tab']
gsettings set org.gnome.desktop.wm.keybindings begin-resize ['<Alt>F8']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-7 @as []
gsettings set org.gnome.desktop.wm.keybindings begin-move ['<Alt>F7']
gsettings set org.gnome.desktop.wm.keybindings move-to-side-w @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-nw @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-10 @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-6 @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-right ['<Control><Shift><Alt>Right']
gsettings set org.gnome.desktop.wm.keybindings always-on-top @as []
gsettings set org.gnome.desktop.wm.keybindings toggle-maximized ['<Alt>F10']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-left ['<Control><Shift><Alt>Left']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-8 @as []
gsettings set org.gnome.desktop.wm.keybindings cycle-panels ['<Control><Alt>Escape']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-11 @as []
gsettings set org.gnome.desktop.wm.keybindings lower @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-7 @as []
gsettings set org.gnome.desktop.wm.keybindings toggle-above @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-down ['<Super><Shift>Page_Down', '<Control><Shift><Alt>Down']
gsettings set org.gnome.desktop.wm.keybindings switch-panels ['<Control><Alt>Tab']
gsettings set org.gnome.desktop.wm.keybindings minimize ['<Super>h']
gsettings set org.gnome.desktop.wm.keybindings cycle-windows ['<Alt>Escape']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-9 @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-12 @as []
gsettings set org.gnome.desktop.wm.keybindings toggle-on-all-workspaces @as []
gsettings set org.gnome.desktop.wm.keybindings switch-input-source ['<Super>space', 'XF86Keyboard']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-8 @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-side-n @as []
gsettings set org.gnome.desktop.wm.keybindings maximize-horizontally @as []
gsettings set org.gnome.desktop.wm.keybindings activate-window-menu ['<Alt>space']
gsettings set org.gnome.desktop.wm.keybindings set-spew-mark @as []
gsettings set org.gnome.desktop.wm.keybindings switch-windows-backward ['<Shift><Alt>Tab']
gsettings set org.gnome.desktop.wm.keybindings maximize-vertically @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-sw @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-9 @as []
gsettings set org.gnome.desktop.wm.keybindings maximize ['<Super>Up']
gsettings set org.gnome.desktop.wm.keybindings panel-main-menu ['<Alt>F1']
gsettings set org.gnome.desktop.wm.keybindings close ['<Alt>F4']
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-up ['<Super><Shift>Up']
gsettings set org.gnome.desktop.wm.keybindings raise-or-lower @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-side-e @as []
gsettings set org.gnome.desktop.wm.keybindings cycle-windows-backward ['<Shift><Alt>Escape']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-1 ['<Super>Home']
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-right ['<Super><Shift>Right']
gsettings set org.gnome.desktop.wm.keybindings switch-windows ['<Alt>Tab']
gsettings set org.gnome.desktop.wm.keybindings panel-run-dialog ['<Alt>F2']
gsettings set org.gnome.desktop.wm.keybindings switch-panels-backward ['<Shift><Control><Alt>Tab']
gsettings set org.gnome.desktop.wm.keybindings unmaximize ['<Super>Down', '<Alt>F5']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-2 @as []
gsettings set org.gnome.desktop.wm.keybindings switch-applications ['<Super>Tab']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-last ['<Super>End']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-1 ['<Super><Shift>Home']
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-ne @as []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-3 @as []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-up ['<Super>Page_Up', '<Control><Alt>Up']
gsettings set org.gnome.desktop.wm.keybindings move-to-side-s @as []
gsettings set org.gnome.desktop.wm.keybindings show-desktop ['<Primary><Super>d', '<Primary><Alt>d', '<Super>d']
gsettings set org.gnome.desktop.wm.keybindings move-to-center @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-2 @as []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-left ['<Control><Alt>Left']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-right ['<Control><Alt>Right']
gsettings set org.gnome.desktop.wm.keybindings raise @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-corner-se @as []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-10 @as []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-4 @as []
gsettings set org.gnome.desktop.wm.keybindings toggle-shaded @as []
gsettings set org.gnome.desktop.wm.keybindings cycle-group-backward ['<Shift><Alt>F6']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-3 @as []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-down ['<Super>Page_Down', '<Control><Alt>Down']
gsettings set org.gnome.desktop.wm.keybindings cycle-panels-backward ['<Shift><Control><Alt>Escape']
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-left ['<Super><Shift>Left']
gsettings set org.gnome.desktop.wm.keybindings switch-applications-backward ['<Shift><Super>Tab']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-11 @as []
gsettings set org.gnome.desktop.wm.keybindings switch-input-source-backward ['<Shift><Super>space', '<Shift>XF86Keyboard']
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-5 @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-4 @as []
gsettings set org.gnome.desktop.wm.keybindings move-to-monitor-down ['<Super><Shift>Down']
gsettings set org.gnome.desktop.wm.keybindings toggle-fullscreen @as []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-6 @as []
gsettings set org.gnome.desktop.wm.keybindings switch-to-workspace-12 @as []
gsettings set org.gnome.desktop.wm.keybindings cycle-group ['<Alt>F6']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-up ['<Super><Shift>Page_Up', '<Control><Shift><Alt>Up']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-last ['<Super><Shift>End']
gsettings set org.gnome.desktop.wm.keybindings switch-group-backward ['<Shift><Super>Above_Tab', '<Shift><Alt>Above_Tab']
gsettings set org.gnome.desktop.wm.keybindings move-to-workspace-5 @as []

############ notifications #############
gsettings set org.gnome.desktop.notifications application-children ['update-manager', 'org-gnome-software', 'thunderbird', 'firefox', 'org-gnome-nautilus', 'gnome-system-monitor-gnome-system-monitor', 'jetbrains-toolbox', 'gnome-network-panel', 'apport-gtk', 'franz', 'org-gnome-gedit', 'org-gnome-evolution-alarm-notify', 'chromium-chromium', 'org-gnome-tweaks', 'gnome-control-center', 'system-config-printer', 'libreoffice-calc', 'keepass2', 'org-gnome-chromegnomeshell', 'toggldesktop', 'jetbrains-phpstorm', 'org-gnome-dejadup', 'libreoffice-writer', 'jetbrains-datagrip', 'libreoffice-startcenter', 'gsettings set com-gexperts-tilix', 'dropbox', 'gnome-printers-panel', 'gnome-power-panel', 'org-keepassxc-keepassxc', 'org-gnome-evince', 'org-gnome-fileroller', 'eog']
gsettings set org.gnome.desktop.notifications show-banners true
gsettings set org.gnome.desktop.notifications show-in-lock-screen true

########### Tilix ############
gsettings set com.gexperts.Tilix.Settings enable-wide-handle false
gsettings set com.gexperts.Tilix.Settings advanced-paste-replace-tabs false
gsettings set com.gexperts.Tilix.Settings auto-hide-mouse false
gsettings set com.gexperts.Tilix.Settings quake-active-monitor false
gsettings set com.gexperts.Tilix.Settings warn-vte-config-issue true
gsettings set com.gexperts.Tilix.Settings control-click-titlebar false
gsettings set com.gexperts.Tilix.Settings app-title '${appName}: ${sessionName}'
gsettings set com.gexperts.Tilix.Settings quake-show-on-all-workspaces true
gsettings set com.gexperts.Tilix.Settings process-monitor false
gsettings set com.gexperts.Tilix.Settings background-image-scale 'bilinear'
gsettings set com.gexperts.Tilix.Settings bookmark-include-return true
gsettings set com.gexperts.Tilix.Settings terminal-title-style 'none'
gsettings set com.gexperts.Tilix.Settings quake-hide-headerbar true
gsettings set com.gexperts.Tilix.Settings use-overlay-scrollbar true
gsettings set com.gexperts.Tilix.Settings quake-hide-lose-focus-delay 150
gsettings set com.gexperts.Tilix.Settings use-tabs false
gsettings set com.gexperts.Tilix.Settings quake-height-percent 90
gsettings set com.gexperts.Tilix.Settings tab-position 'top'
gsettings set com.gexperts.Tilix.Settings prompt-on-new-session false
gsettings set com.gexperts.Tilix.Settings password-include-return true
gsettings set com.gexperts.Tilix.Settings focus-follow-mouse false
gsettings set com.gexperts.Tilix.Settings theme-variant 'dark'
gsettings set com.gexperts.Tilix.Settings recent-session-files @as []
gsettings set com.gexperts.Tilix.Settings accelerators-enabled true
gsettings set com.gexperts.Tilix.Settings quake-specific-monitor -1
gsettings set com.gexperts.Tilix.Settings custom-hyperlinks @as []
gsettings set com.gexperts.Tilix.Settings trigger-unlimit-lines false
gsettings set com.gexperts.Tilix.Settings window-save-state false
gsettings set com.gexperts.Tilix.Settings session-name 'Default'
gsettings set com.gexperts.Tilix.Settings triggers @as []
gsettings set com.gexperts.Tilix.Settings control-scroll-zoom false
gsettings set com.gexperts.Tilix.Settings menu-accelerator-enabled false
gsettings set com.gexperts.Tilix.Settings notify-on-process-complete true
gsettings set com.gexperts.Tilix.Settings advanced-paste-space-count 4
gsettings set com.gexperts.Tilix.Settings close-with-last-session true
gsettings set com.gexperts.Tilix.Settings quake-width-percent 100
gsettings set com.gexperts.Tilix.Settings quake-tab-position 'top'
gsettings set com.gexperts.Tilix.Settings copy-on-select false
gsettings set com.gexperts.Tilix.Settings background-image-mode 'scale'
gsettings set com.gexperts.Tilix.Settings enable-transparency true
gsettings set com.gexperts.Tilix.Settings background-image ''
gsettings set com.gexperts.Tilix.Settings quake-keep-on-top true
gsettings set com.gexperts.Tilix.Settings set-proxy-env true
gsettings set com.gexperts.Tilix.Settings quake-window-position 'top'
gsettings set com.gexperts.Tilix.Settings new-instance-mode 'new-window'
gsettings set com.gexperts.Tilix.Settings triggers-lines 256
gsettings set com.gexperts.Tilix.Settings quake-alignment 'center'
gsettings set com.gexperts.Tilix.Settings search-default-match-as-regex false
gsettings set com.gexperts.Tilix.Settings paste-advanced-default false
gsettings set com.gexperts.Tilix.Settings terminal-title-show-when-single true
gsettings set com.gexperts.Tilix.Settings search-default-match-entire-word false
gsettings set com.gexperts.Tilix.Settings window-style 'borderless'
gsettings set com.gexperts.Tilix.Settings prompt-on-delete-profile true
gsettings set com.gexperts.Tilix.Settings prompt-on-close true
gsettings set com.gexperts.Tilix.Settings prompt-on-close-process true
gsettings set com.gexperts.Tilix.Settings unsafe-paste-alert true
gsettings set com.gexperts.Tilix.Settings paste-strip-first-char false
gsettings set com.gexperts.Tilix.Settings advanced-paste-replace-crlf false
gsettings set com.gexperts.Tilix.Settings window-state 0
gsettings set com.gexperts.Tilix.Settings sidebar-on-right false
gsettings set com.gexperts.Tilix.Settings encodings ['UTF-8']
gsettings set com.gexperts.Tilix.Settings quake-hide-lose-focus false
gsettings set com.gexperts.Tilix.Settings search-default-match-case false
gsettings set com.gexperts.Tilix.Settings middle-click-close false
gsettings set com.gexperts.Tilix.Settings search-default-wrap-around true

######### Tilix keybindings ###########
gsettings set com.gexperts.Tilix.Keybindings terminal-insert-password 'disabled'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-1 '<Ctrl><Alt>1'
gsettings set com.gexperts.Tilix.Keybindings terminal-find-next '<Ctrl><Shift>g'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-7 '<Alt>7'
gsettings set com.gexperts.Tilix.Keybindings terminal-copy-as-html 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-page-up '<Shift>Page_Up'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-left '<Alt>Left'
gsettings set com.gexperts.Tilix.Keybindings terminal-page-down '<Shift>Page_Down'
gsettings set com.gexperts.Tilix.Keybindings app-new-window '<Shift><Ctrl>N'
gsettings set com.gexperts.Tilix.Keybindings terminal-file-browser 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-title-style 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-insert-number 'disabled'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-2 '<Ctrl><Alt>2'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-8 '<Alt>8'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-down '<Alt>Down'
gsettings set com.gexperts.Tilix.Keybindings terminal-toggle-margin '<Ctrl><Alt>m'
gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-out '<Ctrl>minus'
gsettings set com.gexperts.Tilix.Keybindings terminal-previous-prompt 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-copy '<Ctrl><Shift>c'
gsettings set com.gexperts.Tilix.Keybindings session-add-down '<Ctrl><Alt>d'
gsettings set com.gexperts.Tilix.Keybindings terminal-find-previous '<Ctrl><Shift>h'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-9 '<Alt>9'
gsettings set com.gexperts.Tilix.Keybindings win-fullscreen 'F11'
gsettings set com.gexperts.Tilix.Keybindings app-new-session '<Shift><Ctrl>T'
gsettings set com.gexperts.Tilix.Keybindings terminal-next-prompt 'disabled'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-next-session '<Ctrl>Page_Down'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-3 '<Ctrl><Alt>3'
gsettings set com.gexperts.Tilix.Keybindings terminal-close '<Shift><Ctrl>W'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-4 '<Ctrl><Alt>4'
gsettings set com.gexperts.Tilix.Keybindings terminal-profile-preference 'disabled'
gsettings set com.gexperts.Tilix.Keybindings session-save-as 'disabled'
gsettings set com.gexperts.Tilix.Keybindings session-save '<Shift><Ctrl>s'
gsettings set com.gexperts.Tilix.Keybindings session-name 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-add-bookmark 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-scroll-down '<Ctrl><Shift>Down'
gsettings set com.gexperts.Tilix.Keybindings terminal-sync-input-override 'disabled'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-next-terminal '<Ctrl>Tab'
gsettings set com.gexperts.Tilix.Keybindings app-shortcuts 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-paste-primary '<Shift>Insert'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-0 '<Alt>0'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-5 '<Ctrl><Alt>5'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-6 '<Ctrl><Alt>6'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-1 '<Alt>1'
gsettings set com.gexperts.Tilix.Keybindings terminal-advanced-paste 'disabled'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-7 '<Ctrl><Alt>7'
gsettings set com.gexperts.Tilix.Keybindings terminal-save 'disabled'
gsettings set com.gexperts.Tilix.Keybindings win-view-sidebar 'F12'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-up '<Alt>Up'
gsettings set com.gexperts.Tilix.Keybindings terminal-select-bookmark '<Ctrl><Shift>b'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-2 '<Alt>2'
gsettings set com.gexperts.Tilix.Keybindings session-synchronize-input 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-paste '<Ctrl><Shift>v'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-8 '<Ctrl><Alt>8'
gsettings set com.gexperts.Tilix.Keybindings session-close '<Shift><Ctrl>Q'
gsettings set com.gexperts.Tilix.Keybindings terminal-maximize '<Shift><Ctrl>X'
gsettings set com.gexperts.Tilix.Keybindings terminal-monitor-silence 'disabled'
gsettings set com.gexperts.Tilix.Keybindings session-resize-terminal-up '<Shift><Alt>Up'
gsettings set com.gexperts.Tilix.Keybindings session-add-auto '<Ctrl><Alt>a'
gsettings set com.gexperts.Tilix.Keybindings terminal-read-only 'disabled'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-3 '<Alt>3'
gsettings set com.gexperts.Tilix.Keybindings terminal-find '<Ctrl><Shift>f'
gsettings set com.gexperts.Tilix.Keybindings session-add-right '<Ctrl><Alt>r'
gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-in '<Ctrl>plus'
gsettings set com.gexperts.Tilix.Keybindings session-resize-terminal-down '<Shift><Alt>Down'
gsettings set com.gexperts.Tilix.Keybindings session-open '<Shift><Ctrl>o'
gsettings set com.gexperts.Tilix.Keybindings app-preferences 'disabled'
gsettings set com.gexperts.Tilix.Keybindings terminal-layout 'disabled'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-4 '<Alt>4'
gsettings set com.gexperts.Tilix.Keybindings terminal-reset 'disabled'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-9 '<Ctrl><Alt>9'
gsettings set com.gexperts.Tilix.Keybindings terminal-zoom-normal '<Ctrl>0'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-previous-terminal '<Ctrl><Shift>Tab'
gsettings set com.gexperts.Tilix.Keybindings session-resize-terminal-left '<Shift><Alt>Left'
gsettings set com.gexperts.Tilix.Keybindings terminal-select-all '<Ctrl><Shift>a'
gsettings set com.gexperts.Tilix.Keybindings nautilus-open '<Ctrl><Alt>t'
gsettings set com.gexperts.Tilix.Keybindings win-reorder-next-session '<Ctrl><Shift>Page_Down'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-5 '<Alt>5'
gsettings set com.gexperts.Tilix.Keybindings win-reorder-previous-session '<Ctrl><Shift>Page_Up'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-right '<Alt>Right'
gsettings set com.gexperts.Tilix.Keybindings session-resize-terminal-right '<Shift><Alt>Right'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-session-0 '<Ctrl><Alt>0'
gsettings set com.gexperts.Tilix.Keybindings terminal-scroll-up '<Ctrl><Shift>Up'
gsettings set com.gexperts.Tilix.Keybindings session-switch-to-terminal-6 '<Alt>6'
gsettings set com.gexperts.Tilix.Keybindings win-switch-to-previous-session '<Ctrl>Page_Up'
gsettings set com.gexperts.Tilix.Keybindings terminal-reset-and-clear 'disabled'

######### extensions ###########
gsettings set org.gnome.shell disable-user-extensions false
gsettings set org.gnome.shell enabled-extensions ['caffeine@patapon.info', 'multi-monitors-add-on@spin83', 'dash-to-panel@jderose9.github.com', 'dash-to-dock@micxgx.gmail.com', 'desktop-icons@csoriano', 'System_Monitor@bghome.gmail.com']
gsettings set org.gnome.shell development-tools true
gsettings set org.gnome.shell introspect false
gsettings set org.gnome.shell looking-glass-history @as []
gsettings set org.gnome.shell remember-mount-password true

######### extension Dash-to-Dock ###########
gsettings set org.gnome.shell.extensions.dash-to-dock transparency-mode 'DEFAULT'
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-text '<Super>q'
gsettings set org.gnome.shell.extensions.dash-to-dock apply-custom-theme false
gsettings set org.gnome.shell.extensions.dash-to-dock show-favorites true
gsettings set org.gnome.shell.extensions.dash-to-dock click-action 'focus-or-previews'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-9 ['<Super>9']
gsettings set org.gnome.shell.extensions.dash-to-dock custom-background-color false
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-1 ['<Shift><Super>1']
gsettings set org.gnome.shell.extensions.dash-to-dock multi-monitor false
gsettings set org.gnome.shell.extensions.dash-to-dock height-fraction 0.90000000000000002
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-1 ['<Ctrl><Super>1']
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-workspaces false
gsettings set org.gnome.shell.extensions.dash-to-dock shift-click-action 'launch'
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut-timeout 2.0
gsettings set org.gnome.shell.extensions.dash-to-dock show-delay 0.25
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-shrink true
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-2 ['<Shift><Super>2']
gsettings set org.gnome.shell.extensions.dash-to-dock show-windows-preview true
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-2 ['<Ctrl><Super>2']
gsettings set org.gnome.shell.extensions.dash-to-dock autohide-in-fullscreen false
gsettings set org.gnome.shell.extensions.dash-to-dock icon-size-fixed true
gsettings set org.gnome.shell.extensions.dash-to-dock scroll-action 'switch-workspace'
gsettings set org.gnome.shell.extensions.dash-to-dock shift-middle-click-action 'minimize'
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-color '#e95420'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-3 ['<Shift><Super>3']
gsettings set org.gnome.shell.extensions.dash-to-dock pressure-threshold 100.0
gsettings set org.gnome.shell.extensions.dash-to-dock hide-delay 0.20000000000000001
gsettings set org.gnome.shell.extensions.dash-to-dock show-apps-at-top false
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-3 ['<Ctrl><Super>3']
gsettings set org.gnome.shell.extensions.dash-to-dock show-show-apps-button true
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-4 ['<Shift><Super>4']
gsettings set org.gnome.shell.extensions.dash-to-dock show-running true
gsettings set org.gnome.shell.extensions.dash-to-dock force-straight-corner false
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-1 ['<Super>1']
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-4 ['<Ctrl><Super>4']
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-style 'DOTS'
gsettings set org.gnome.shell.extensions.dash-to-dock hotkeys-overlay true
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-5 ['<Shift><Super>5']
gsettings set org.gnome.shell.extensions.dash-to-dock animation-time 0.20000000000000001
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-color '#e95420'
gsettings set org.gnome.shell.extensions.dash-to-dock running-indicator-dominant-color false
gsettings set org.gnome.shell.extensions.dash-to-dock hotkeys-show-dock true
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-5 ['<Ctrl><Super>5']
gsettings set org.gnome.shell.extensions.dash-to-dock unity-backlit-items false
gsettings set org.gnome.shell.extensions.dash-to-dock animate-show-apps true
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-2 ['<Super>2']
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-running-dots-border-width 0
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-6 ['<Shift><Super>6']
gsettings set org.gnome.shell.extensions.dash-to-dock shortcut ['<Super>q']
gsettings set org.gnome.shell.extensions.dash-to-dock customize-alphas false
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-3 ['<Super>3']
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-6 ['<Ctrl><Super>6']
gsettings set org.gnome.shell.extensions.dash-to-dock autohide true
gsettings set org.gnome.shell.extensions.dash-to-dock minimize-shift true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-position 'BOTTOM'
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-7 ['<Shift><Super>7']
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-10 ['<Super>0']
gsettings set org.gnome.shell.extensions.dash-to-dock custom-theme-customize-running-dots true
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-4 ['<Super>4']
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-7 ['<Ctrl><Super>7']
gsettings set org.gnome.shell.extensions.dash-to-dock background-opacity 0.80000000000000004
gsettings set org.gnome.shell.extensions.dash-to-dock middle-click-action 'launch'
gsettings set org.gnome.shell.extensions.dash-to-dock extend-height true
gsettings set org.gnome.shell.extensions.dash-to-dock dock-fixed false
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-8 ['<Shift><Super>8']
gsettings set org.gnome.shell.extensions.dash-to-dock max-alpha 0.80000000000000004
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-5 ['<Super>5']
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-8 ['<Ctrl><Super>8']
gsettings set org.gnome.shell.extensions.dash-to-dock dash-max-icon-size 40
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-9 ['<Shift><Super>9']
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide true
gsettings set org.gnome.shell.extensions.dash-to-dock require-pressure-to-show true
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-6 ['<Super>6']
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-9 ['<Ctrl><Super>9']
gsettings set org.gnome.shell.extensions.dash-to-dock bolt-support true
gsettings set org.gnome.shell.extensions.dash-to-dock scroll-switch-workspace true
gsettings set org.gnome.shell.extensions.dash-to-dock preferred-monitor -1
gsettings set org.gnome.shell.extensions.dash-to-dock min-alpha 0.20000000000000001
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-7 ['<Super>7']
gsettings set org.gnome.shell.extensions.dash-to-dock app-ctrl-hotkey-10 ['<Ctrl><Super>0']
gsettings set org.gnome.shell.extensions.dash-to-dock activate-single-window true
gsettings set org.gnome.shell.extensions.dash-to-dock intellihide-mode 'ALL_WINDOWS'
gsettings set org.gnome.shell.extensions.dash-to-dock isolate-monitors false
gsettings set org.gnome.shell.extensions.dash-to-dock background-color '#ffffff'
gsettings set org.gnome.shell.extensions.dash-to-dock app-hotkey-8 ['<Super>8']
gsettings set org.gnome.shell.extensions.dash-to-dock app-shift-hotkey-10 ['<Shift><Super>0']
gsettings set org.gnome.shell.extensions.dash-to-dock hot-keys true

######## desktop ###########
gsettings set org.gnome.desktop.wm.preferences theme 'Adwaita'
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
