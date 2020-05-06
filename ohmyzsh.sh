

yay -S curl git --needed --noconfirm
sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)" "" --unattended

if [[ -e '~/.zshrc' ]]; then
  mv ~/.zshrc{,.bak}
fi
#rm ~/.zprofile

dir=$(dirname $0)

cd $dir
stow -t ~ zsh -v
cd -

git clone https://github.com/zsh-users/zsh-autosuggestions ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-autosuggestions
git clone https://github.com/zsh-users/zsh-syntax-highlighting.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/plugins/zsh-syntax-highlighting
git clone https://github.com/denysdovhan/spaceship-prompt.git ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt
echo "CRIANDO TEMA"
ln -s ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship-prompt/spaceship.zsh-theme ${ZSH_CUSTOM:-~/.oh-my-zsh/custom}/themes/spaceship.zsh-theme

git clone https://github.com/zsh-users/zsh-completions ${ZSH_CUSTOM:=~/.oh-my-zsh/custom}/plugins/zsh-completions

base_shell_dir=''

if [[ $EUID -eq 0 ]]; then
  base_shell_dir='/bin'
else
  base_shell_dir='/usr/bin'
fi

chsh -s ${base_shell_dir}/zsh
