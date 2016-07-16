sudo echo "Strarting OutrightLinux install-script"
echo "dummy"
scripts/install_essentials.sh

#Development-Stuff
scripts/development/install_essentials.sh
#TODO: Make e-mail and name variable
scripts/development/configure_git.sh
scripts/development/install_powerline_fonts.sh
scripts/development/install_vim.sh
scripts/development/install_fish.sh

