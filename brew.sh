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

brew install nvm

# Required for ImageOptim gem
brew install https://raw.github.com/cbguder/homebrew/53ea33bab5372ea74117ace8c44aa7ea988e93c2/Library/Formula/pngout.rb
brew install advancecomp gifsicle jhead jpegoptim jpeg optipng pngcrush pngquant

brew install Caskroom/cask/java

brew install 1password
brew install 1password-cli
brew install adobe-creative-cloud
brew install android-studio
brew install another-redis-desktop-manager
brew install audio-hijack
brew install discord
brew install figma
brew install finicky
brew install flipper
brew install gpg-suite
brew install grammarly
brew install hazel
brew install iterm2
brew install insomnia
brew install kaleidoscope
brew install loopback
brew install mockoon
brew install notion
brew install obs
brew install openwebstart
brew install protonvpn
brew install proton-drive
brew install postgres-unofficial
brew install postico
brew install raycast
brew install rescuetime
brew install setapp
brew install soundsourcebrew install terminus
brew install tower
brew install telegram
brew install transmission
brew install visual-studio-code
brew install vlc


brew install getsentry/tools/sentry-cli

defaults write com.apple.finder QLEnableTextSelection -bool true && killall Finder

gpg --keyserver hkp://keys.gnupg.net --recv-keys 409B6B1796C275462A1703113804BB82D39DC0E3 7D2BAF1CF37B13E2069D6956105BD0E739499BDB

pnpm add -g git-open

#curl -sSL https://get.rvm.io | bash
# wget -qO- https://get.pnpm.io/install.sh | sh -

brew install watchman

brew install openssl
brew install openssl@1.1

# Remove outdated versions from the cellar
brew cleanup

defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';
defaults write com.apple.dock persistent-apps -array-add '{"tile-type"="spacer-tile";}';

killall Dock

# rvm install ruby-3.3.0 --with-openssl-dir=/opt/homebrew/opt/openssl@1.1