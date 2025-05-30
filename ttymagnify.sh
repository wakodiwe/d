#!/usr/bin/env bash

# unset debug
debug=true
# set -x
# set -v

scriptname="$(basename ${0})"
scriptpath=$(dirname -- "$(readlink -f -- "$0";)")

usage() {
	cat <<-EOH
	usage:
	  ${scriptname} +|-
	EOH
	exit 1
}

msg() {
  if [ "${1}" ]; then
	  printf "%s\n" "${1}" 
		[ ${2} = "1" ] && usage
	fi
}


# CACHEFILEPATH
# Set cachefilepath to XDG_DATA_HOME if set
# else to HOME
cachefilepath="${XDG_DATA_HOME:-$HOME}"

# Set filename for cachefile. Add . when in $HOME
cachefilename="tty-magnify"
[ "${cachefilepath}" = "${HOME}" ] && cachefilename=".${cachefilename}"
cachefile="${cachefilepath}/${cachefilename}"

# Test whether cachefile exists
# else create it and fill with ${basefont}
if [ ! -f "${cachefile}" ]; then
	# Grep and set the FONT from /etc/rc.conf
	rcfont="$(grep -oP '(?<=FONT=").*(?=")' /etc/rc.conf)"
fi

fontname="$(cat ${cachefile})"
echo $fontname
# echo "${rcfont}" > "${cachefile}" 
# fontsize="${fontname:(-3):3}"
fontsize="$(echo ${fontname} | grep -Eo '[0-9]{2}')"
echo ${fontsize:(-2):2}
exit
# [ $debug ] && echo "\$cachefilepath:\t$cachefilepath"
# [ $debug ] && echo "\$rcfont grep:\t$rcfont"
# [ $debug ] && echo "\$cachefilename:\t$cachefilename"
# [ $debug ] && echo "\$cachefile:\t$cachefile"
# [ $debug ] && echo "cat \$cachefile:\t$(cat ${cachefile})"
# [ $debug ] && echo "\$font:\t\t${fontname}"
# [ $debug ] && echo "\$fontsize:\t\t${fontsize}"
# [ $debug ] && echo "\$:\t\t${fontsize}"
# [ $debug ] && rm $cachefile

fontresize() {
	[ $debug ] && echo "\${1}:\t\t${1}"
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



# [ ! -d "${XDG_DATA_HOME}" ] && msg "${XDG_DATA_HOME} not found." 0
# exit
# exit



# # Test if cachefile is a valide file
# # else print msg(), show usage and exit
# [ ! -f "${cachefile}" ] && msg "Configfile ${cachefile} not found" 0
# exit


# cat  $cachefile
# exit
# # [ ! -f "${cachefile}" ] && echo "hello" > "${cachefile}" 




#   # HARDWARECLOCK="UTC"
#   # TIMEZONE="Europe/Berlin"
#   # KEYMAP="gnarf"
#   # FONT="ter-112n"

# exit

# fontresize() {
#   local currentsize="$(cat font.conf)"
# 	local plusminus="${1}"
# 	echo $plusminus
# 	echo $currentsize
#   echo $2
#   local newsize=$((${currentsize} $plusminus 2))
# 	echo "ter-1${newsize}n"

  
# }




# # ter-112n
# # ter-114n
# # ter-116n
# # ter-118n
# # ter-120n
# # ter-122n
# # ter-124n
# # ter-128n
# # ter-132n
# # ter-112n
