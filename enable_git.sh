#!/bin/bash

start_git()
{
alias git="docker run -ti --rm -v $(pwd):/git bwits/docker-git-alpine"
}

export -f start_git