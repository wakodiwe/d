#!/usr/bin/env bash

scriptname="$(basename ${0})"
scriptpath=$(dirname -- "$(readlink -f -- "$0";)")

usage() {
				cat <<-EOH
	usage:
		sudo ${scriptname} +|-
	EOH
	exit 1
}

msg() {
				if [ "${1}" ]; then
								printf "%s\n" "${1}" 
								[ ${2} = "1" ] && usage
				fi
}

[ "$(id -u)" != 0 ] && usage

# CACHEFILEPATH
# Set cachefilepath to XDG_DATA_HOME if set
# else to HOME
cachefilepath="${XDG_DATA_HOME:-$HOME}"

# Set filename for cachefile.
# prefix it with a . (dot) when in $HOME
cachefilename="tty-magnify"
[ "${cachefilepath}" = "${HOME}" ] && cachefilename=".${cachefilename}"

# Set path to cachefile
cachefile="${cachefilepath}/${cachefilename}"

# Test whether cachefile exists
if [ ! -f "${cachefile}" ]; then
				# Grep the "FONT" from /etc/rc.config
				# extract the size
				# and save to new cachefile
				rcfont="$(grep -Eo '[0-9]{3}' /etc/rc.conf)"
				echo "${rcfont:(-2):2}" 
				# echo "${rcfont:(-2):2}" > "${cachefile}"

fi


fontresize() {
				local plusminus="${1}"
				local fontsize="$(cat ${cachefile})"
				echo $fontsize
				# local fontsize=12


	# 12 - 24
  echo $fontsize
	if [ "${1}" = "+" ]; then
					echo $fontsize
    if [ "${fontsize}" -lt 24 ] && [ "${fontsize}" -gt 11 ]; then
			newfontsize="$(( $fontsize + 2 ))" > "${cachefile}"
		fi

	elif [ "${1}" = "-" ]; then
    if [ "${fontsize}" -gt 23 ] || [ "${fontsize}" -gt 12 ]; then
			newfontsize="$(( $fontsize - 2 ))" > "${cachefile}"

		fi
    echo $newfontsize
	  # echo "${newfontsize}" > "${cachefile}"
		# setfont "/usr/share/kbd/consolefonts/ter-1${newfontsize}n.psf.gz"

	fi
    cat $cachefile

exit


	# elif [ "${1}" = "-" ]; then

	# fi


	# elif [ "${1}" = "-" ]; then
	# echo "down"

	# fi
	# [ $debug ] && echo "${fontsize}"
}

# Argparser
case "${1}" in 
				+|-) fontresize $@; shift ;;
				*) usage ;;

esac


# read -p "--- BREAK ---" break


# [ ! -f "${cachefile}" ] && echo "${basefont}" > "${cachefile}" 
# # [ ! -f "${cachefile}" ] && echo "${basefont}" > "${cachefile}" 



# # If no cachefile is found in $HOME
# # then set cachefile to $2

# # exit




# fontresize() {
#   local currentsize="$(cat font.conf)"
# 	local plusminus="${1}"
# 	echo $plusminus
# 	echo $currentsize
#   echo $2
#   local newsize=$((${currentsize} $plusminus 2))
# 	echo "ter-1${newsize}n"


# }




