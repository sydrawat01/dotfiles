#!/usr/bin/env bash
# setting the locale, some users have issues with different locales, this forces the correct one
export LC_ALL=en_US.UTF-8

HOSTS="google.com github.com example.com"

get_ssid() {
  # Check OS
  case $(uname -s) in
  Linux)
    SSID=$(iw dev | sed -nr 's/^\t\tssid (.*)/\1/p')
    if [ -n "$SSID" ]; then
      printf '%s' "$SSID"
    else
      echo '󰈀 eth'
    fi
    ;;

  Darwin)
    if networksetup -getairportnetwork en0 | cut -d ':' -f 2 | sed 's/^[[:blank:]]*//g' &>/dev/null; then
      echo "$(networksetup -getairportnetwork en0 | cut -d ':' -f 2)" | sed 's/^[[:blank:]]*//g'
    else
      echo '󰈀 eth'
    fi
    ;;

  CYGWIN* | MINGW32* | MSYS* | MINGW*)
    # leaving empty - TODO - windows compatability
    ;;

  *) ;;
  esac

}

main() {
  network="offline"
  for host in $HOSTS; do
    if ping -q -c 1 -W 1 $host &>/dev/null; then
      network="$(get_ssid)"
      break
    fi
  done

  echo " $network"
}

#run main driver function
main
