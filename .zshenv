PATH="/usr/local/bin:$PATH:/sbin:/usr/sbin:/usr/local/sbin:/usr/local/share/npm/bin:"~/bin:"/Users/`whoami`/scripts":"/Users/`whoami`/stack-ide/stack-mode":"/Users/`whoami`/.local/bin":"/usr/local/opt/gnu-sed/libexec/gnubin"
MANPATH="/usr/local/opt/gnu-sed/libexec/gnuman:$MANPATH"
RUST_SRC_PATH="/Users/`whoami`/.rust/src/"
JAVA_HOME=`/usr/libexec/java_home -v 1.8`

if [ "$TERM" = dumb ]; then
	export PAGER="head -n100"
	unset GIT_PAGER
	export MANPAGER="cat"
fi

if [ -z "$SSH_CLIENT" ]; then
	EDITOR="/usr/local/bin/emacsclient"
fi
