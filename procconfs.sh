#!/usr/bin/bash

for i in *; do
  [[ $i == "procconfs.sh" ]] && continue
  [[ $i == "README.md" ]] && continue

  # Check if file exists
  if [[ -f ~/.$i ]]; then
    echo "--- $i is file ---"
    rm ~/.$i
    ln -s `realpath $i` ~/.$i
  # Check if directory
  elif [[ -d ~/.$i ]]; then
    echo "--- $i is a dir ---"
    files="`ls $i/`"
    for f in $files; do
      if [[ -e ~/.$i/$f ]]; then
        echo " - $f is a subfile"
        rm -r ~/.$i/$f
        ln -s `realpath $i/$f` ~/.$i/$f
      fi
    done
  else
    echo "--- $i doesn't exist ---"
    ln -s `realpath $i` ~/.$i
  fi

done


