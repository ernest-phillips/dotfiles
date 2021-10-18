alias git-scrub='git branch --merged | grep -v master | xargs git branch -d'
# Auto-correct offenses (safe and unsafe)
alias get-12='bin/rubocop -A'
# https://docs.rubocop.org/rubocop/usage/basic_usage.html#command-line-flags

parse_git_branch() {
     git branch 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/ (\1)/'
}

export PS1="\[\033[0;36m\]@${GITHUB_USER}\[\033[0;00m\] ➜ \[\033[1;34m\]\w\[\033[33m\]\$(parse_git_branch)\[\033[00m\] $ "
