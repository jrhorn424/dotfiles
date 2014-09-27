# TODO.txt colorization function
# ========
# The following function replaces the old alias, which was:
# alias t='todo.sh -d ~/todo.cfg'
# and automates grc colorization of todo
t () {
  if [ -z "$1" ]
  then
    todo.sh -ls -d ~/todo.cfg | grcat conf.todo
  else
    todo.sh -d ~/todo.cfg ${*} | grcat conf.todo
  fi
}
