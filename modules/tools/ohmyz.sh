# oh-my-zsh 
git clone https://github.com/robbyrussell/oh-my-zsh.git $HOME/.oh-my-zsh && \
cp $HOME/.oh-my-zsh/templates/zshrc.zsh-template $HOME/.zshrc && \
chmod 660 $HOME/.zshrc && \
sed -i '1iZSH_DISABLE_COMPFIX=true' $HOME/.zshrc && \
sed -i '/^# DISABLE_MAGIC_FUNCTIONS.*/s/^#//' $HOME/.zshrc && \
echo "setopt PROMPT_CR" >> $HOME/.zshrc && \
echo "setopt PROMPT_SP" >> $HOME/.zshrc && \
echo "export PROMPT_EOL_MARK=\"\"" >> $HOME/.zshrc && \
echo "😎😎😎😎😎"
