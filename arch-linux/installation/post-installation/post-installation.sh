sudo pacman -S \
  terminus-font           `# tty bigger font` \
  xorg-server xorg-xinit  `# X` \
  git ssh-tools           `# git` \
  xorg-xmodmap            `# keyboard remap` \
  xorg-xrdb               \
  xorg-xinput            `# to configure devices like trackpad, trackpoint, etc. E.g. cf. ~/.config/sxhkd/sxhkdrc` \
  firefox                 `# web browser` \
  noto-fonts              `# browser font` \
  ttf-libertaion          `# browser font` \
  dunst                   \
  ibus ibus-unikey ibus-pinyin  `# input method` \
  tree                    \
  mdcat                   \
  redshift                   \
  go                  `# more and more programs need go, e.g. bazelisk, lf, etc.` \
  zathura zathura-pdf-mupdf zathura-djvu zathura-ps  \
  alsa-utils \
  xclip \
  texlive-most \
  neovim \
  xorg-xev `# show key press info` \
  noto-font-cjk `# for browser to display Chinese/Japanese/Korean; ttf-arphic-uming ttf-arphic-ukai; CJK font: pacman -Ss cjk` \

