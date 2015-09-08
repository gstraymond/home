( [ -d ${HOME}/.oh-my-zsh/custom/plugins/xw ] && git -C ${HOME}/.oh-my-zsh/custom/plugins/xw pull --rebase  > /dev/null ) || ( [ ! -d ${HOME}/.oh-my-zsh/custom/plugins/xw ] &&  git clone http://vod.canal-bis.com/stash/scm/dt/zsh-tools.git ${HOME}/.oh-my-zsh/custom/plugins/xw > /dev/null )

alias fastssh='ssh -o PreferredAuthentications=keyboard-interactive,password'
alias fastscp='scp -o PreferredAuthentications=keyboard-interactive,password'

alias vless='vim -u /usr/share/vim/vim72/macros/less.vim'

alias lycos='grep -iIrn --color=auto'
alias hlycos='lycos --include="*.html" --exclude-dir={bin,.target}'
alias jlycos='lycos --include="*.java"'
alias plycos='lycos --include="*.properties" --exclude-dir="target"'
alias slycos='lycos --include="*.scala"'
alias xlycos='lycos --include="*.xml" --exclude-dir="target"'
alias clycos='lycos --include="*.conf" --exclude-dir="target"'
alias sbtlycos='find -name build.sbt -o -name plugins.sbt | xargs grep -in --color=auto'
alias jsonlycos='lycos --include="*.json" --exclude-dir="target"'

alias hfind='find . -type f -name "*.html" | grep -v bin | grep -v target | grep -i '
alias jfind='find . -type f -name "*.java" | grep -i '
alias pfind='find . -type f -name "*.properties" | grep -v target | grep -i '
alias sfind='find . -type f -name "*.scala" | grep -i '
alias xfind='find . -type f -name "*.xml" | grep -v target | grep -i '
alias jsonfind='find . -type f -name "*.json" | grep -v target | grep -i '

alias activator='~/opt/activator/activator'

alias hyperpull='find ~/git -type d -name .git | xargs -n 1 dirname | while read line; do cd $line && echo "\e[33m$line\e[0m" && git pull && git-init-scala; done; cd ~/git/xwing'

alias clrIvy2Cache='rm -rf ~/.ivy2/cache/fr.canal'
alias clrIvy2LocalAndCache='rm -rf ~/.ivy2/local ~/.ivy2/cache/fr.canal'

alias prettyJson='python -m json.tool'

alias dockerHistory='history | grep "docker run" | grep -i '
alias dlogs='docker logs --tail=1000 -f '

alias dr='docker-sbt'

alias gxw='~/git/xwing'

alias popopop='git stash && git pull && git stash pop'

alias syncHome='cp ~/.zshrc ~/git/tools/home/. && cp ~/.oh-my-zsh/custom/custom.zsh ~/git/tools/home/.oh-my-zsh/custom/. && cp ~/.gitconfig ~/git/tools/home/. && cp ~/.i3/config ~/git/tools/home/.i3/. && cp ~/.Xresources ~/git/tools/home/. && cp ~/.fonts/Input-* ~/git/tools/home/.fonts/.'

bddp(){
	local bddpCmd="http '172.30.5.17:8080$1' Access-Token:7C22881415F79684EB77F4543FC5D Accept-Language:fr-FR,fr"
	echo $bddpCmd
   	eval $bddpCmd
}

esAggs(){
	local esCmd="http localhost:9200/xwing/_search size=0 aggs:='{\"$1\":{\"terms\":{\"field\":\"$1\"}}}'"
	echo $esCmd
   	eval $esCmd
}

esQ(){
	local esCmd="http localhost:9200/xwing/_search\?q=$1:$2"
	echo $esCmd
   	eval $esCmd
}

