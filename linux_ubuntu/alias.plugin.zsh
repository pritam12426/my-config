# This file conten only alies for 'zsh' config

# For neo vim
alias erc='nvim ~/.zshrc'
alias enc="nvim ~/.config/nvim/init.vim" 
alias eza='nvim ~/.oh-my-zsh/plugins/alias/alias.plugin.zsh'

# python system script
alias lz='lazygit'
# alias ff='python3 ~/Desktop/programming/system_script/play_f_p.py'
# alias fff='python3 ~/Desktop/programming/system_script/play_ff_pp.py'
# alias renamepwd='python3 ~/Desktop/programming/system_script/rename.py'
# alias pushcon='python3 ~/Desktop/programming/system_script/push_config_to_github.py'
# alias addgitignore="python3 ~/Desktop/programming/system_script/git_lgnore/Mk_Git_Ignore.py"

# Fro change dir()
alias cdir='cd ~/Desktop/programming/c_lan/'
alias gdir='cd ~/Desktop/programming/github/'
alias pydir='cd ~/Desktop/programming/python/practic/'
alias spdir='cd ~/Desktop/programming/system_script/'

# System scrcpy with out python
alias exiftool_f='exiftool -overwrite_original'
alias actenv='source ~/Desktop/programming/python/date_sic/bin/activate'
alias rmdes='exiftool -overwrite_original -longdescription="" -description="" *'
alias scrcpy_r='scrcpy -m 1080 --max-fps=60 -r ~/Videos/screencasts/scrcpy_$(date +'%Y-%m-%d_%H-%M-%S').mp4'
