alias gbpurge='git branch --merged | grep -v "\*" | grep -v "master" | grep -v "develop" | grep -v "staging" | xargs -n 1 git branch -d'

export lgg2='LGD802958690bc'
export sgs2='00199fb36039ce'
export nex9='HT4ALJT03255'
export sga3='3100b9772351a27f'

alias vless='vim -u /usr/share/vim/vim80/macros/less.vim'

alias snipsApk='./gradlew --offline :app:installDebug'

alias cleanApk='adb shell pm clear ai.snips.debug'

alias lycos='grep -iIrn --color=auto'
alias hlycos='lycos --include="*.html" --exclude-dir={bin,.target}'
alias jlycos='lycos --include="*.java"'
alias plycos='lycos --include="*.properties" --exclude-dir="target"'
alias slycos='lycos --include="*.scala"'
alias xlycos='lycos --include="*.xml" --exclude-dir={target,.idea,build}'
alias clycos='lycos --include="*.conf" --exclude-dir="target"'
alias sbtlycos='find -name build.sbt -o -name plugins.sbt | xargs grep -in --color=auto'
alias jsonlycos='lycos --include="*.json" --exclude-dir="target"'
alias klycos='lycos --include="*.kt"'

alias hfind='find . -type f -name "*.html" | grep -v bin | grep -v target | grep -i '
alias jfind='find . -type f -name "*.java" | grep -i '
alias pfind='find . -type f -name "*.properties" | grep -v target | grep -i '
alias sfind='find . -type f -name "*.scala" | grep -i '
alias xfind='find . -type f -name "*.xml" | grep -v target | grep -v .idea | grep -i '
alias jsonfind='find . -type f -name "*.json" | grep -v target | grep -i '
alias kfind='find . -type f -name "*.kt" | grep -i '

export PATH="$PATH:/home/gstraymond/Android/Sdk/platform-tools/"
export PATH="$PATH:/home/gstraymond/Android/Sdk/tools/"

# urxvt CTRL key
bindkey "^[Od" backward-word  \# control-left
bindkey "^[Oc" forward-word   \# control-righ

alias refreshMon='xrandr --dpi 192 --output HDMI2 --auto --above eDP1'

