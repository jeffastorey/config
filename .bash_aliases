unwarToDir() {
    doUnzipToDir $1 war    
}

unzipToDir() {
    doUnzipToDir $1 zip
}

doUnzipToDir() {
   unzip $1 -d "${1%.$2}"
}

replaceRecursive() {
  find . -type f -exec sed -i "s/$1/$2/" {} \;
}

up(){
  local d=""
  limit=$1
  for ((i=1 ; i <= limit ; i++))
    do
      d=$d/..
    done
  d=$(echo $d | sed 's/^\///')
  if [ -z "$d" ]; then
    d=..
  fi
  cd $d
}

mkcd() {
    mkdir -p "$*"
    cd "$*"
}

fullpath() {
  find `pwd` -name $1
}

alias open=xdg-open
alias removeTempFiles='rm -f .*~ *.*~'
