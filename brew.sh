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


brew install v8

# Install other useful binaries
brew install gpg
brew install ack
brew install git

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


brew install Caskroom/cask/java


brew install finicky
brew install react-native-debugger
brew install adobe-creative-cloud
brew install audio-hijack
brew install android-studio
brew install bartender
brew install cleanmymac
brew install google-chrome
brew install hazel
brew install imagealpha
brew install imageoptim
brew install iterm2
brew install kaleidoscope
brew install pocket-casts
brew install postgres-unofficial
brew install postman
brew install rescuetime
brew install rocket
brew install shadow
brew install steam
brew install sublime-text
brew install switchresx
brew install tower
brew install transmission
brew install visual-studio-code
brew install gpg-suite
brew install istat-menus
brew install soundsource
brew install loopback
brew install postico

# brew install betterzipql
# brew install qlcolorcode
# brew install qlmanage
# brew install qlmarkdown
# brew install qlprettypatch
# brew install qlstephen
# brew install quicklook-csv
# brew install quicklook-json
# brew install suspicious-package
# brew install webp-quicklook

defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder

# Link Sublime 2 in terminal
ln -s /Applications/Sublime\ Text.app/Contents/SharedSupport/bin/subl /usr/local/bin/sublime

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB


npm install --global git-open

#curl -sSL https://get.rvm.io | bash

npm install -g react-native-cli

brew install watchman

brew install heroku/brew/heroku

brew install openssl
brew install mysql-connector-c

# Peanut Releated
brew install glib
brew install sops
brew install vips


# Remove outdated versions from the cellar
brew cleanup

defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';

killall Dock

