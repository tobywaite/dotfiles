# How to set up my env #

1. Install Homebrew:
    - https://brew.sh/
    - /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
2. Install OhMyZsh:
    - https://ohmyz.sh/
    - $ sh -c "$(curl -fsSL https://raw.github.com/robbyrussell/oh-my-zsh/master/tools/install.sh)"
3. Set up SSH Keys & Github:
    - https://help.github.com/articles/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent/
4. Install Dotfiles:
    - https://github.com/technicalpickles/homesick
    - https://github.com/tobywaite/dotfiles
        - sudo gem install homesick
        - homesick clone tobywaite/dotfiles
        - homesick link dotfiles
5. Configure iTerm:
    - Download & Install Solarized: 
        - http://ethanschoonover.com/solarized
        - http://ethanschoonover.com/solarized/files/solarized.zip
        - https://github.com/altercation/ethanschoonover.com/tree/master/projects/solarized/iterm2-colors-solarized
    - Install Powerline Fonts:
        - https://github.com/powerline/fonts
    - Set up iTerm configuration:
        - iTerm Preferences -> General -> "Load preferences from a custom folder or URL" -> "/Users/toby/.config/iterm"
6. Set up python:
    - pip install -r ~/.config/python/requirements.txt
    - pip3 install -r ~/.config/python/requirements3.txt

## To Do: ##
- Maybe automate some of the above using .homesickrc (see homesick README) or make?
