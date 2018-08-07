#
# ~/.zprofile
#

if [ -e /home/oktomus/.nix-profile/etc/profile.d/nix.sh ]; then . /home/oktomus/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer
[[ -z $DISPLAY && $XDG_VTNR -eq 1 ]] && startx
