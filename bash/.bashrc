# ~/.bashrc

# TODO Add colors and LC_COLORS

[[ $- != *i* ]] && return

#. ~/.env
# . ~/.alias

[ -f ~/.alias ] && . ~/.alias

# Load ~/.inputrc if exists
# else activate vi-mode in ~/bashrc
if [ -f ~/.inputrc ]; then
	bind -f ~/.inputrc
else
	set -o vi
fi

# Helper function for vifm
# TODO Put in plugin dir/function
d() {
  local dst="$(command vifm --choose-dir - "$@")"
  if [ -z "$dst" ]; then
    echo 'Directory picking cancelled/failed'
    return 1
  fi
  cd "$dst"
}

# Count background jobs
# and display them in prompt [17] YOUR_PS1
count_jobs() {
	unset JOBS
	running_jobs="$(jobs -p | wc -l | xargs)"
	[ "${running_jobs}" -gt 0 ] && JOBS="[${running_jobs}] "
}
export PROMPT_COMMAND='history -a; history -r; count_jobs'
prompt="\${JOBS}\w > " 
PS1="${prompt}"
PS2="${prompt}  "


# bash_d="${XDG_CONFIG_HOME}"/bash.d
#if [ -d "${bash_d}" ]; then
#  for bashd in "${bash_d}"; do
#    [ -f "${bashd}" ] && . "${bashd}"
#  done
#fi

# off  assoc_expand_once         
# off  autocd
# off  cdable_vars               


# off  checkhash                 

# off  cdspell                   
# off  dirspell                  
# off  direxpand                 

# off  checkjobs                 

# off  compat31                  
# off  compat32                  
# off  compat40                  
# off  compat41                  
# off  compat42                  
# off  compat43                  
# off  compat44                  

# off  dotglob                   

# off  execfail                  
# off  extdebug                  
# off  failglob                  
# off  globstar                  
# off  gnu_errfmt                
# off  histappend                
# off  histreedit                
# off  histverify                
# off  hostcomplete              
# off  huponexit                 
# off  inherit_errexit           
# off  lastpipe                  
# off  lithist                   
# off  localvar_inherit          
# off  localvar_unset            
# off  mailwarn                  
# off  nocaseglob                
# off  nocasematch               
# off  no_empty_cmd_completion   
# off  noexpand_translation      
# off  nullglob                  
# off  progcomp_alias            
# off  restricted_shell          
# off  shift_verbose             
# off  varredir_close            
# on   checkwinsize              
# on   cmdhist                   
# on   complete_fullquote        
# on   expand_aliases            
# on   extglob                   
# on   extquote                  
# on   force_fignore             
# on   globasciiranges           
# on   globskipdots              
# on   interactive_comments      
# on   login_shell               
# on   patsub_replacement        
# on   progcomp                  
# on   promptvars                
# on   sourcepath                
# ooo  xpg_echo
