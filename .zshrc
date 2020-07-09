autoload -Uz vcs_info
zstyle ':vcs_info:*' enable git svn
precmd() { vcs_info }

zstyle ':vcs_info:git:*' formats ' %fon %B%F{161}%b'
 
setopt PROMPT_SUBST

NEWLINE=$'\n';

PROMPT='';
PROMPT+='%B%F{43}%n%b';
PROMPT+=' %fat';
PROMPT+=' %B%F{135}%m%b';
PROMPT+=' %fin';
PROMPT+=' %B%F{208}%3~%b';
PROMPT+='${vcs_info_msg_0_}%b';
PROMPT+='${NEWLINE}';
PROMPT+='%b%f%# ';

