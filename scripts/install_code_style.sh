#!/bin/bash
# Taken from Square's IntelliJ configs repo: https://github.com/square/java-code-styles

echo "Installing code style configs..."

CONFIGS="$( cd "$( dirname "${BASH_SOURCE[0]}" )" && pwd )"

for i in $HOME/Library/Preferences/IntelliJIdea*  \
         $HOME/Library/Preferences/IdeaIC*        \
         $HOME/Library/Preferences/AndroidStudio* \
         $HOME/.IntelliJIdea*/config              \
         $HOME/.IdeaIC*/config                    \
         $HOME/.AndroidStudio*/config
do
  if [ -d $i ]; then
    mkdir -p $i/codestyles
    cp -frv "$CONFIGS"/* $i/codestyles
  fi
done

echo "Done."
echo ""
echo "Restart AndroidStudio, go to preferences, and apply 'DragonSmash'."
