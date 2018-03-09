#!/bin/bash

for i in {0..255} ; do
  printf "\x1b[38;5;${i}m${i}  "
done

printf "\n\n"

for i in {0..255} ; do
  printf "\e[1;5m%-6s\e[${i}m" "${i}"
done

printf "\n\n"

for i in {0..255} ; do
  printf "\033[${i};${i}m${i} \033[0m"
done
