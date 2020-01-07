#!/usr/bin/env bash

# Install command-line tools using Homebrew.

# Make sure we’re using the latest Homebrew.
brew update

# Upgrade any already-installed formulae.
brew upgrade

# Install GNU core utilities (those that come with macOS are outdated).
# Don’t forget to add `$(brew --prefix coreutils)/libexec/gnubin` to `$PATH`.
brew install coreutils

# Install some other useful utilities like `sponge`.
brew install moreutils

# Install GNU `find`, `locate`, `updatedb`, and `xargs`, `g`-prefixed.
brew install findutils

# Install GNU `sed`, overwriting the built-in `sed`.
brew install gnu-sed --with-default-names


# Install wget with IRI support
brew install wget --enable-iri

brew install ssh-copy-id

# Install more recent versions of some OS X tools
brew tap homebrew/dupes
brew install homebrew/dupes/grep


brew install v8

# Install other useful binaries
brew install gpg
brew install ack
brew install git
brew install imagemagick@6 && brew link imagemagick@6 --force
echo 'export PATH="/usr/local/opt/imagemagick@6/bin:$PATH"' >> ~/.path

brew install redis
brew install yarn



# mkdir -p ~/Library/LaunchAgents
#    cp /usr/local/Cellar/redis/2.4.8/homebrew.mxcl.redis.plist ~/Library/LaunchAgents/
#    launchctl load -w ~/Library/LaunchAgents/homebrew.mxcl.redis.plist

brew install nvm

# Install native apps
brew tap caskroom/cask

# Required for ImageOptim gem
brew install https://raw.github.com/cbguder/homebrew/53ea33bab5372ea74117ace8c44aa7ea988e93c2/Library/Formula/pngout.rb
brew install advancecomp gifsicle jhead jpegoptim jpeg optipng pngcrush pngquant

brew install rbenv
brew install rbenv-bundler

brew install Caskroom/cask/java
brew install brew-cask

function installcask() {
	if brew cask info "${@}" | grep "Not installed" > /dev/null; then
		brew cask install "${@}" --appdir="/Applications"
	else
		echo "${@} is already installed."
	fi
}

installcask adobe-creative-cloud
installcask android-studio
installcask bartender
installcask cleanmymac
installcask docker
installcask dropbox
installcask firefox
installcask google-chrome
installcask imagealpha
installcask imageoptim
installcask iterm2
installcask hazel
installcask kaleidoscope
installcash pocket-casts
installcask postgres
installcask postman
installcase react-native-debugger
installcask rescuetime
installcash rocket
installcask shadow
installcask steam
installcask sublime-text
installcask switchresx
installcask tower
installcask transmission
installcask visual-studio-code

installcask qlcolorcode
installcask qlstephen
installcask qlmarkdown
installcask quicklook-json
installcask qlprettypatch
installcask quicklook-csv
installcask betterzipql
installcask webp-quicklook
installcask suspicious-package
installcask qlmanage

defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder

# Link Sublime 2 in terminal
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB


#curl -sSL https://get.rvm.io | bash

npm install -g react-native-cli

brew install watchman

brew install heroku/brew/heroku


brew install openssl
brew install mysql-connector-c

# Remove outdated versions from the cellar
brew cleanup

defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';

killall Dock