#!/bin/bash

set -o errexit
set -o nounset
set -o pipefail

##  subtree Dir Repo Ref

subtree() {
    git subtree add --prefix "$1" "$2" "$3"
}

system_tag=v7.3

system_dirs=(
    racket
    drracket
    lazy
    typed-racket
    scribble
)

for dir in "${system_dirs[@]}"; do
    subtree "$dir" "/junk/racket-src/$dir" "$system_tag"
done
