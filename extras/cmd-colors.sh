#!/bin/bash
# Show available terminal colours.
# Heavily modified version of the TLDP script here:
# http://tldp.org/HOWTO/Bash-Prompt-HOWTO/x329.html

print_colors(){
  echo
  # Print rows.
  for bold in ${bolds[@]}; do
    for fg in ${fgs[@]}; do
      # Print cells.
      for bg in ${bgs[@]}; do
        # Print cell.
        printf "\e[%s;%s;%sm%s       \e[0m \e        " $bold $fg $bg "  "
      done
      echo
    done
  done
}

# Print standard colors.
bolds=( 0 1 )
fgs=( 3{5..7} )
bgs=( 4{0..8} )
print_colors
