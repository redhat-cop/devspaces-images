(echo "HISTFILE=${HOME}/.zsh_history"; echo "HISTSIZE=1000"; echo "SAVEHIST=1000") >> ${HOME}/.zshrc
(echo "if [ -f ${PROJECT_SOURCE}/workspace.rc ]"; echo "then"; echo "  . ${PROJECT_SOURCE}/workspace.rc"; echo "fi") >> ${HOME}/.zshrc
echo "PS1='[\u@\h \W]\$ '" >> "${HOME}"/.bashrc
(echo "if [ -f ${PROJECT_SOURCE}/workspace.rc ]"; echo "then"; echo "  . ${PROJECT_SOURCE}/workspace.rc"; echo "fi") >> ${HOME}/.bashrc