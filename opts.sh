
export ZDOTDIR="$HOME/.config/zsh"

export ESCDELAY=0

export LC_COLLATE="C"
export NO_AT_BRIDGE=1

# DIRECTORIES

export XDG_CONFIG_HOME="$HOME/.config"
export XDG_DATA_HOME="$HOME/.local/share"
export XDG_CACHE_HOME="$HOME/.cache"

export BIN="$HOME/.local/bin"
export LIB="$HOME/.local/lib"
export DOWNLOADS="$HOME/Downloads"
export DOCS="$HOME/Docs"
export PROJECTS="$HOME/Projects"
export MEDIA="$HOME/Media"
export BIB="$DOCS/.bib"

# EXECUTABLES

export TERMINAL="foot"
export TERMCMD=$TERMINAL
export OPEN="$ZDOTDIR/bin/rifle"
export EXPLORER="nnn"
export PICKER="picker"
export PAGER="less"
export EDITOR="nvim"
export VISUAL="nvim"

export SUDO_ASKPASS="$XDG_CONFIG_HOME/zsh/bin/sudo-pass"
export SSH_ASKPASS="$XDG_CONFIG_HOME/zsh/bin/ssh-pass"

# HISTORY

export HISTFILE="$ZDOTDIR/cache/histfile"
export HISTSIZE=10000
export SAVEHIST=10000

export LESSHISTFILE="/dev/null"

# CONFIG FILES

export RIPGREP_CONFIG_PATH="$ZDOTDIR/config/rg"
export LG_CONFIG_FILE="$XDG_CONFIG_HOME/git/lazy.yml"
export ABBR_USER_ABBREVIATIONS_FILE="$ZDOTDIR/config/abbreviations"

export SSH_AUTH_SOCK="$XDG_RUNTIME_DIR/ssh-agent.socket"
export GNUPGHOME="$XDG_CONFIG_HOME/gnupg"

export PASSWORD_STORE_DIR="$XDG_CONFIG_HOME/password-store"
export PASSWORD_STORE_ENABLE_EXTENSIONS=true

# NNN CONFIG

export NNN_OPTS="AQr"
export NNN_OPENER="$OPEN"
export NNN_COLORS="4321"
export NNN_FCOLORS="C1E24B23006033F7C6D6ABC4"
export NNN_FIFO="/tmp/nnn.fifo"
NNN_CMDS='l:!less "${nnn}";n:-!&"$TERMINAL" --working-directory="$PWD";y:-!&wl-copy "$PWD/$nnn";c:!cp -rv "${nnn}" "${nnn}_";g:!git diff "$nnn"'
NNN_PLUG='f:fzcd;o:openall;p:fzplug;d:diffs;a:dragdrop'
export NNN_PLUG="$NNN_CMDS;$NNN_PLUG"
NNN_FT1="7z|a|ace|alz|arc|arj|bz|bz2|cab|cpio|deb|gz|jar|lha|lz|lzh|lzma|lzo"
NNN_FT2="lzo|rar|rpm|rz|t7z|tar|tbz|tbz2|tgz|tlz|txz|tZ|tzo|war|xpi|xz|Z|zip"
export NNN_ARCHIVE="\\.($NNN_FT1|$NNN_FT2)$"
export NNN_ORDER="t:${HOME}/Downloads"
export NNN_MCLICK="h"

# PYTHON CONFIG

export PYTHONPATH="$LIB/python"
export PYTHONOPTIMIZE=0
export PYTHONPYCACHEPREFIX="$XDG_CACHE_HOME/tmp/pycache"
export JUPYTER_CONFIG_DIR="$XDG_CONFIG_HOME/jupyter"
export MYPY_CACHE_DIR="$XDG_CACHE_HOME/tmp/mypycache"

# ZVM PLUGIN CONFIG

export ZVM_KEYTIMEOUT=1
export ZVM_CURSOR_STYLE_ENABLED=false

# SYSTEMD NOTIFY

export NOTIFY_SOCKET="$XDG_RUNTIME_DIR/systemd/notify"

# ADD TO PATH

if [[ ":$PATH:" != *":$BIN:"* ]]; then
	export PATH="${PATH:+"$PATH:"}$BIN"
fi

