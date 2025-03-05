# Add user configurations here
# For HyDE not to touch your beloved configurations,
# we added 2 files to the project structure:
# 1. ~/.hyde.zshrc - for customizing the shell related hyde configurations
# 2. ~/.zshenv - for updating the zsh environment variables handled by HyDE // this will be modified across updates

#  Plugins 
# oh-my-zsh plugins are loaded  in ~/.hyde.zshrc file, see the file for more information

#  Aliases 
# Add aliases here
# List Directory
alias ls="lsd"
alias l="ls -l"
alias la="ls -a"
alias lla="ls -la"
alias lt="ls --tree"
alias c="clear"
alias vesktop="flatpak run dev.vencord.Vesktop"
alias brave="flatpak run com.brave.Browser"
alias aur="yay -Sua"
alias sp="sudo pacman"
alias sn="sudo nano"
alias sv="sudo nvim"
alias fetch="fastfetch"
alias n="nvim"
alias b-m="blueman-manager"
alias cg='cat $(find . -type f |fzf)'
alias cdg='cd $(find . -type d | fzf)'
alias timeupdate='/home/j/.j_custom_scripts/time.sh'

#Functions
#List of Functions
0x0() {
    curl -F "file=@$1" https://0x0.st | wl-copy
    echo "URL copied to clipboard!"
}

0x0-url() {
    curl -F "url=$1" https://0x0.st | wl-copy
    echo "Shortened URL copied to clipboard!"
}


discord() {
    echo "I don't have Discord on here, please trust me more... Mummy"
 }


#Disabled "yay -Syu"
yay() {
    if [[ "$1" == "-Syu" ]]; then
        echo "The use of 'yay -Syu' is disabled."
        return
    fi 

    /usr/bin/yay "$@"
}

yay() {
    if [[ $# -eq 0 ]]; then
        echo "Error: No arguments provided. Use 'yay -S' or other options."
    else
        command yay "$@"
    fi 
}

#Search Functions
reddit() {
    local query
    query=$(printf '%s ' "$@") 
    query=${query% }          
    firefox "https://search.brave.com/search?q=site:reddit.com%20$query"
}

arch() {
    local query
    query=$(printf '%s ' "$@") 
    query=${query% }          
    firefox "https://www.perplexity.com/search?q=site:archlinux.org%20$query"
}



#  This is your file 
# Add your configurations here
