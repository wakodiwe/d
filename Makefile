# dotfiles/Makefile

_DOTS_HOME=${HOME/dotfiles}

all:
	stow ${_DOTS_HOME} -v -t ${HOME} */

delete:
	stow -D ${_DOTS_HOME} -v -t ${HOME} */

love:
	@echo "<3<3<3<3<3<3"
	@echo "<3<3<3<3<3<3"
	@echo "<3<3<3<3<3<3"
	@echo "<3<3<3<3<3<3"
	@echo "<3<3<3<3<3<3"
