# DotFilesi3
Personal Dotfiles for i3

To use these, (please don't i'm very inexperienced with Linux these dot file are prob junk) just copy the files in the directories indicated on the repo

*.config is in /home/(YOURUSERNAME)/.config

Make sure to change the following commands of .config/i3/config:

    Line 191: bindsym $mod+c exec chromium (put the browser of your choice)

    Line 194: exec_always xrandr --output Virtual1 --primary --mode 1920x1080 --pos 0x0 --rotate normal --output Virtual2 --off --output Virtual3 --off --output Virtual4 --off --output Virtual5 --off --output Virtual6 --off --output Virtual7 --off --output Virtual8 --off (change it to your resolution using arandr)

    Line 197: exec_always feh --bg-scale /home/adrynax/Pictures/aurora-wallpaper-1.jpg (change the path to your wallpaper)

    Line 200: exec_always /home/adrynax/.config/polybar/launch.sh (change adrynax to (YOURUSERNAME))

    Line 230: exec_always picom --config /home/adrynax/.config/picom/picom.conf (change adrynax to (YOURUSERNAME))

Apps Needed:
    
    Feh
    Picom
    Polybar
    Rofi
    Alacritty

Recommended apps:
    
    yay
    Xorg-Xrandr
    Arandr
    unzip
    locate

Personal Apps I use:
    
    Chromium
    Ranger
    Fontforge?
    Cava
    Pipes.sh
    Cbonsai
    Htop
    tty-clock

There are prob other apps I frogot to write, but these are the most important ones




