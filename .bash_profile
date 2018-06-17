#prompt
parse_git_branch() {
  git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

RED="\[$(tput setaf 9)\]"
RESET="\[$(tput sgr0)\]"

export PS1="${RED}\h:\W\$(parse_git_branch) $ ${RESET}"

#terminal behavior
alias profile="vim ~/.bash_profile"
alias sp="source ~/.bash_profile"
alias la="ls -alF"
alias cst="cs ~/Documents/web/turing/ta/"
alias csp="cs ~/Documents/web/projects"
alias csd="cs ~/Desktop"
. ~/Applications/Scripts/z.sh
function cs () {
  cd "$@" && ls
}
function mdc () {
  mkdir "$@" && cd "$@"
}

#Deckset for slides
alias deck="open -a 'Deckset'"

#Updated Vim for Ultisnips
alias vim='/usr/local/Cellar/vim/8.0.0134_2/bin/vim'

#Ruby benchmarking
alias rp="ruby-prof --printer=graph_html --sort=self --file=profile.html"

#shortcuts for git
alias gs="git status"
alias ga="git add -A"
alias gc="git commit -m"
alias gca="git commit --amend -m"
alias gba="git branch -a"
alias gch="git checkout"
alias gbc="git checkout -b"
alias gd="git diff --patience --ignore-space-change"
alias gds="git diff --patience --ignore-space-change --staged"
alias gpo="git push origin"
alias gpom="git push origin master"
alias pull="git pull origin master"
alias pages="git pull origin gh-pages"
alias glog="git log --pretty=format:\"%Cgreen%h$Creset %Cblue%ad%Creset %s%C(yellow)%d%Creset %Cblue[%an]%Creset\" --graph --date=short"

#git autocomplete - run `curl https://raw.githubusercontent.com/git/git/master/contrib/completion/git-completion.bash -o ~/.git-completion.bash` from the command line to download bash script.
if [ -f ~/.git-completion.bash ]; then
  . ~/.git-completion.bash
  __git_complete gch _git_checkout
  __git_complete gpo _git_push_origin
fi

#shortcuts for GitHub
alias hc="hub create"
alias hb="hub browse"

#Rails
alias be="bundle exec"
alias nuke="rake db:drop db:create db:migrate db:seed db:test:prepare"

#Weather
alias weather="curl wttr.in/'Denver'"

#RVM additions
source ~/.profile
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

#Paths for Go
export GOPATH="$HOME/Work"
export PATH="$PATH:$GOPATH/bin"

#Lunchy autocomplete
LUNCHY_DIR=$(dirname `gem which lunchy`)/../extras
if [ -f $LUNCHY_DIR/lunchy-completion.bash  ]; then
  . $LUNCHY_DIR/lunchy-completion.bash
fi
