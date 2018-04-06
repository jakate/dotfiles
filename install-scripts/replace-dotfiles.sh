
#===============================================================================
#
#             NOTES: For this to work you must have cloned the github
#                    repo to your home folder as ~/dotfiles/
#
#===============================================================================

#==============
# Variables
#==============
dotfiles_dir=~/dotfiles
old_dotfiles_dir=~/old_dotfiles

mkdir -p $old_dotfiles_dir

declare -a files=(".vimrc" ".bashrc" ".tmux.conf" ".screenrc" ".inputrc" ".gitignore" ".gitconfig" ".gitattributes" ".functions" ".exports" ".bashrc" ".bash_prompt" ".bash_profile" ".aliases" "z.sh")

for i in "${files[@]}"
do
  filename=$i
  file=~/$filename

  # if file exists, move it to safe place
  if [ -f $file ]; then
    echo "move $file"
    mv "$file" $old_dotfiles_dir
  else
    echo "not found $file"
  fi

  # create a symlink to dotfiles
  ln -sf $dotfiles_dir/$filename ~/$filename
done
