#!/bin/bash

git clone --depth 1 https://ghproxy.com/https://github.com/junegunn/fzf.git ~/.fzf

sed -i "s@url=@url=https://ghproxy.com/@g" ~/.fzf/install

~/.fzf/install


cd ～ \
&& echo n | REMOTE=https://gitee.com/mirrors/ohmyzsh.git sh -c "$(curl -fsSL https://gitee.com/mirrors/ohmyzsh/raw/master/tools/install.sh)" \
&& git clone https://ghproxy.com/https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions \
&& git clone https://ghproxy.com/https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting \
&& sed -i 's@ZSH_THEME=".\+"@ZSH_THEME="steeef"@' .zshrc \
&& sed -i "s@\(plugins=(\)@\1zsh-autosuggestions zsh-syntax-highlighting fzf z @" .zshrc \
&& source .zshrc
