#to disable shell sessions
SHELL_SESSIONS_DISABLE=1

#functions!

#to check whether the command exists
function exists() {
  # `command -v` is similar to `which`
  # https://stackoverflow.com/a/677212/1341838
  
  command -v $1 >/dev/null 2>&1

  #more explicitly written as :
  # command -v $1 1>/dev/null 2>/dev/null
}

# to create and cd into the new directory
function mkcd () {
  mkdir -p "$@" && cd "$_";
}