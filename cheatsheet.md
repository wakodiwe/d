## Cheetsheet

### Bash shorts
#### Substring

    '''
    $ fontname="ter-112n"
    $ fontsize="${fontname:(-3):2}"
    $ echo $fontsize
    112
    '''

### grep
#### Grep digits in string

    '''
    

    '''
#### Grep between START and END

    '''
    grep -oP '(?<=START).*(?=END)' /etc/rc.conf
    '''

    '''
    $ cat example.conf
    AA="A"
    BB="B"
    CC="C"
    FOOBAR="Raboof"
    
    $ grep -oP '(?<=FOOBAR=).*(?=")' example.conf
    Raboof

### Templates
#### Shell
##### scriptheader
    '''
    #!/usr/bin/env sh

    scriptname="$(basename ${0})"
    scriptpath=$(dirname -- "$(readlink -f -- "$0";)")

    usage() {
        cat <<-EOH
        usage:
          ${scriptname} +|- [path/to/configfile]
        EOH
        exit 1
    }

    msg() {
      if [ "${1}" ]; then
          printf "%s\n" "${1}" 
            [ ${2} = "1" ] && usage
        fi
    }

    # Simple argparser
    case "${1}" in 
      ) echo "\$plusminus:\t$1"; shift ;;
      # +|-) fontresize $@; shift ;;
      *) usage ;;
    esac
    ```
