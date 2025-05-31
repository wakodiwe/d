#!/usr/bin/env bash
#- dotfiles/install.sh

scriptname="$(basename ${0})"
scriptpath=$(dirname -- "$(readlink -f -- "$0";)")

_DOTS_HOME="${scriptpath}"

# Function: usage
usage() {
	cat <<-EOH
	usage:
	  ${scriptname} [install]
	  ${scriptname} delete
	  ${scriptname} install|delete [pkgA pkgB ...]
	EOH
	exit 1
}

# Function: msg
msg() {
  if [ "${1}" ]; then
		printf "%s\n" "${1}" 
		[ ${2} ] && usage
	fi
}

# install and exit
# If script is called with no arguments
# use install as arg and install all dotfiles
if [ $# -eq 0 ]; then
	msg "Installing all dotfiles" 0
  stow -v -t ${HOME} *./
	[ $? ] && msg "Undefined error." 0
	echo $?
	exit 0
fi

exit
echo $#

# Parse args
for arg in "${@}"; do
	case "${arg}" in
	 	install|delete) echo $arg
	;;
		*) usage
	;;
	esac
done
