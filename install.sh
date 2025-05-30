#!/usr/bin/env bash
#-
# dotfiles/install.sh

scriptname="$(basename ${0})"
scriptpath=$(dirname -- "$(readlink -f -- "$0";)")

_DOTS_HOME="${scriptpath}"

usage() {
	cat <<-EOH
	usage:
	  ${scriptname} [install]
	  ${scriptname} delete
	  ${scriptname} install|delete [pkgA pkgB ...]
	EOH
	exit 1
}
[ "${1}" == "-h" ] && usage

dotinstall() {
	echo "Installing all dotfiles"
  stow -v -t ${HOME} */
	exit 0
}

[ $# -eq 0 ] && dotinstall

echo $#

for arg in "${@}"; do
	case "${arg}" in
    install|delete) echo $arg; shift;    
		;;
		*) echo $@
		;;



	esac

done
echo "Ende: yes"
