# How to set up my env #

### Install homesick: ###
https://github.com/technicalpickles/homesick

    sudo gem install homesick
    homesick clone tobywaite/dotfiles
    homesick link dotfiles

### Other env setup on OS X: ###
- Install homebrew: http://brew.sh/
 - /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
- Install hub (github wrapper): brew install hub
- Solarized for iTerm2 (high contrast helps): https://github.com/altercation/solarized/tree/master/iterm2-colors-solarized
- Powerline fonts (Inconsolata is nice): https://github.com/Lokaltog/powerline-fonts
- Disable iTerm2 -> Preferences -> Profiles -> Text -> "Draw bold text in bright colors"

### To Do: ###
- Maybe automate some of the above using .homesickrc (see homesick README).
