#!/bin/zsh

declare -A inputMap=( VGA1 1 VGA2 2 DVI1 3 DVI2 4 DisplayPort1 15 DisplayPort2 16 HDMI1 17 HDMI2 18 USB-C 27 )

main() {
  local monitor="$1"
  local input="$2"
  case $monitor in
    dell)
      ddcctl -d 1 inputMap[$input]
      break
      ;;
    viewsonic)
      ddcctl -d 2 inputMap[$input]
      break
      ;;
    *)
      echo "Usage:"
      ;;
  esac
}

main $@

