defaults write com.apple.dock "orientation" -string "left"
defaults write NSGlobalDomain "AppleShowAllExtensions" -bool "true"
defaults write com.apple.finder "AppleShowAllFiles" -bool "true"
defaults write com.apple.menuextra.clock "DateFormat" -string "\"EEE d MMM HH:mm:ss\""

#Trackpad 
## tap to click

if [ $(defaults read com.apple.AppleMultitouchTrackpad Clicking) -eq 1 ]
then int=0 ; bool=false
else int=1 ; bool=true
fi

defaults write com.apple.AppleMultitouchTrackpad Clicking -bool $bool
defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad Clicking -bool $bool
defaults -currentHost write -g com.apple.mouse.tapBehavior -int $int

/System/Library/PrivateFrameworks/SystemAdministration.framework/Resources/activateSettings -u

## un-natural scroll
defaults write com.apple.AppleMultitouchTrackpad TrackpadScroll -bool false



# Mission control
defaults write com.apple.dock "mru-spaces" -bool "false"
killall Dock && killall Finder && killall -HUP cfprefsd