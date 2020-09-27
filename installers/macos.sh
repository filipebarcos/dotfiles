# # Disable transparency in the menu bar and elsewhere
# defaults write com.apple.universalaccess reduceTransparency -bool true
# defaults write AppleEnableMenuBarTransparency -bool false

# # Disable animations when opening windows
# defaults write NSGlobalDomain NSAutomaticWindowAnimationsEnabled -bool false

# # Disable animations when opening Quick Look panes
# defaults write -g QLPanelAnimationDuration -float 0

# # Disable animations for cmd+i
# defaults write com.apple.finder DisableAllAnimations -bool true

# # Increase window resize speed for Cocoa applications
# defaults write NSGlobalDomain NSWindowResizeTime -float 0.001

# # Expand save panel by default
# defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
# defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true

# # Expand print panel by default
# defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true

# # Save to disk (not to iCloud) by default
# defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false

# # Automatically quit printer app once the print jobs complete
# defaults write com.apple.print.PrintingPrefs "Quit When Finished" -bool true

# # Disable the “Are you sure you want to open this application?” dialog
# # Thanks god for existing this config =D
# defaults write com.apple.LaunchServices LSQuarantine -bool false

# # Remove duplicates in the “Open With” menu (also see `lscleanup` alias)
# /System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user

# # Display ASCII control characters using caret notation in standard text views
# # Try e.g. `cd /tmp; unidecode "\x{0000}" > cc.txt; open -e cc.txt`
# defaults write NSGlobalDomain NSTextShowsControlCharacters -bool true

# # Disable Resume system-wide
# defaults write NSGlobalDomain NSQuitAlwaysKeepsWindows -bool false

# # Allowing text selection in Quick Look/Preview in Finder by default
# defaults write com.apple.finder QLEnableTextSelection -bool true

# # Reveal IP address, hostname, OS version, etc. when clicking the clock
# # in the login window
# sudo defaults write /Library/Preferences/com.apple.loginwindow AdminHostInfo HostName

# # Dont restart automatically if the computer freezes
# systemsetup -setrestartfreeze off

# ###############################################################################
# # Trackpad, mouse, keyboard, Bluetooth accessories, and input                 #
# ###############################################################################

# # Trackpad: swipe between pages with four fingers
# # Its not working for 4 fingers
# # defaults write NSGlobalDomain AppleEnableSwipeNavigateWithScrolls -bool true
# # defaults -currentHost write NSGlobalDomain com.apple.trackpad.fourFingerHorizSwipeGesture -int 1
# # defaults write com.apple.driver.AppleBluetoothMultitouch.trackpad TrackpadFourFingerHorizSwipeGesture -int 1

# # Disable “natural” (Lion-style) scrolling
# defaults write NSGlobalDomain com.apple.swipescrolldirection -bool false

# # Increase sound quality for Bluetooth headphones/headsets
# defaults write com.apple.BluetoothAudioAgent "Apple Bitpool Min (editable)" -int 40

# # Enable full keyboard access for all controls
# # (e.g. enable Tab in modal dialogs)
# defaults write NSGlobalDomain AppleKeyboardUIMode -int 3

# # Disable press-and-hold for keys in favor of key repeat
# defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false

# # Set a blazingly fast keyboard repeat rate
# defaults write NSGlobalDomain KeyRepeat -int 1

# # Disable auto-correct
# defaults write NSGlobalDomain NSAutomaticSpellingCorrectionEnabled -bool false

# ###############################################################################
# # Screen                                                                      #
# ###############################################################################

# # Require password immediately after sleep or screen saver begins
# defaults write com.apple.screensaver askForPassword -int 1
# defaults write com.apple.screensaver askForPasswordDelay -int 0

# # Save screenshots to the desktop
# defaults write com.apple.screencapture location -string "$HOME/Desktop"

# # Save screenshots in PNG format (other options: BMP, GIF, JPG, PDF, TIFF)
# defaults write com.apple.screencapture type -string "png"

# # Disable shadow in screenshots
# defaults write com.apple.screencapture disable-shadow -bool true

# # Enable subpixel font rendering on non-Apple LCDs
# defaults write NSGlobalDomain AppleFontSmoothing -int 2

# # Enable HiDPI display modes (requires restart)
# sudo defaults write /Library/Preferences/com.apple.windowserver DisplayResolutionEnabled -bool true

# ###############################################################################
# # Finder                                                                      #
# ###############################################################################

# # Show icons for hard drives, servers, and removable media on the desktop
# defaults write com.apple.finder ShowExternalHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowHardDrivesOnDesktop -bool true
# defaults write com.apple.finder ShowRemovableMediaOnDesktop -bool true

# # Finder: show hidden files by default
# defaults write com.apple.finder AppleShowAllFiles -bool false

# # Finder: show all filename extensions
# defaults write NSGlobalDomain AppleShowAllExtensions -bool true

# # Finder: show status bar
# defaults write com.apple.finder ShowStatusBar -bool true

# # Finder: allow text selection in Quick Look
# defaults write com.apple.finder QLEnableTextSelection -bool true

# # Display full POSIX path as Finder window title
# defaults write com.apple.finder _FXShowPosixPathInTitle -bool true

# # When performing a search, search the current folder by default
# defaults write com.apple.finder FXDefaultSearchScope -string "SCcf"

# # Disable the warning when changing a file extension
# defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false

# # Avoid creating .DS_Store files on network volumes
# defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool TRUE
# defaults write com.apple.desktopservices UseBareEnumeration -bool FALSE

# # Disable disk image verification
# defaults write com.apple.frameworks.diskimages skip-verify -bool true
# defaults write com.apple.frameworks.diskimages skip-verify-locked -bool true
# defaults write com.apple.frameworks.diskimages skip-verify-remote -bool true

# # Automatically open a new Finder window when a volume is mounted
# defaults write com.apple.frameworks.diskimages auto-open-ro-root -bool true
# defaults write com.apple.frameworks.diskimages auto-open-rw-root -bool true
# defaults write com.apple.finder OpenWindowForNewRemovableDisk -bool true

# # Show item info below icons on the desktop and in other icon views
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:showItemInfo true" ~/Library/Preferences/com.apple.finder.plist

# # Enable snap-to-grid for icons on the desktop and in other icon views
# /usr/libexec/PlistBuddy -c "Set :DesktopViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :FK_StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist
# /usr/libexec/PlistBuddy -c "Set :StandardViewSettings:IconViewSettings:arrangeBy grid" ~/Library/Preferences/com.apple.finder.plist

# # Use list view in all Finder windows by default
# # Four-letter codes for the other view modes:
# # list-view: `Nlsv`
# # Icon-view: `icnv`
# # Column View: `clmv`
# # Coverflow: `Flwv`
# defaults write com.apple.finder FXPreferredViewStyle Clmv

# # Enable the warning before emptying the Trash
# defaults write com.apple.finder WarnOnEmptyTrash -bool true

# # Empty Trash securely by default
# defaults write com.apple.finder EmptyTrashSecurely -bool false

# # Enable AirDrop over Ethernet and on unsupported Macs running Lion
# defaults write com.apple.NetworkBrowser BrowseAllInterfaces -bool true

# # Show the ~/Library folder
# chflags nohidden ~/Library

# ###############################################################################
# # Dock & hot corners                                                          #
# ###############################################################################

# # Enable highlight hover effect for the grid view of a stack (Dock)
# #defaults write com.apple.dock mouse-over-hilte-stack -bool true

# # Set the icon size of Dock items to 36 pixels
# defaults write com.apple.dock tilesize -int 20

# # Enable spring loading for all Dock items
# defaults write com.apple.dock enable-spring-load-actions-on-all-items -bool true

# # Show indicator lights for open applications in the Dock
# defaults write com.apple.dock show-process-indicators -bool true

# # Don't animate opening applications from the Dock
# defaults write com.apple.dock launchanim -bool false

# # Speed up Mission Control animations
# defaults write com.apple.dock expose-animation-duration -float 0.1

# # Remove the auto-hiding Dock delay
# defaults write com.apple.dock autohide-delay -float 0
# defaults write com.apple.dock autohide -bool true
# defaults write com.apple.dock autohide-time-modifier -float 0

# # Make Dock icons of hidden applications translucent
# defaults write com.apple.dock showhidden -bool true

# # Add a spacer to the left side of the Dock (where the applications are)
# #defaults write com.apple.dock persistent-apps -array-add '{tile-data={}; tile-type="spacer-tile";}'
# # Add a spacer to the right side of the Dock (where the Trash is)
# #defaults write com.apple.dock persistent-others -array-add '{tile-data={}; tile-type="spacer-tile";}'

# ###############################################################################
# # Safari & WebKit                                                             #
# ###############################################################################

# # Set Safari’s home page to `about:blank` for faster loading
# defaults write com.apple.Safari HomePage -string "about:blank"

# # Prevent Safari from opening ‘safe’ files automatically after downloading
# defaults write com.apple.Safari AutoOpenSafeDownloads -bool false

# # Disable Safari’s thumbnail cache for History and Top Sites
# defaults write com.apple.Safari DebugSnapshotsUpdatePolicy -int 2

# # Enable Safari’s debug menu
# defaults write com.apple.Safari IncludeInternalDebugMenu -bool true

# # Make Safari’s search banners default to Contains instead of Starts With
# defaults write com.apple.Safari FindOnPageMatchesWordStartsOnly -bool false

# # Enable the Develop menu and the Web Inspector in Safari
# defaults write com.apple.Safari IncludeDevelopMenu -bool true
# defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
# defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true

# # Disable the standard delay in rendering a Web page.
# defaults write com.apple.Safari WebKitInitialTimedLayoutDelay 0.25

# # Add a context menu item for showing the Web Inspector in web views
# defaults write NSGlobalDomain WebKitDeveloperExtras -bool true

# # Enable the WebKit Developer Tools in the Mac App Store
# defaults write com.apple.appstore WebKitDeveloperExtras -bool true


# ###############################################################################
# # Terminal                                                                    #
# ###############################################################################

# # Only use UTF-8 in Terminal.app
# defaults write com.apple.terminal StringEncodings -array 4

# # Enable “focus follows mouse” for Terminal.app and all X11 apps
# # i.e. hover over a window and start typing in it without clicking first
# #defaults write com.apple.terminal FocusFollowsMouse -bool true
# #defaults write org.x.X11 wm_ffm -bool true


# ###############################################################################
# # Address Book, Dashboard, iCal, TextEdit, and Disk Utility                   #
# ###############################################################################

# # Use plain text mode for new TextEdit documents
# defaults write com.apple.TextEdit RichText -int 0
# # Open and save files as UTF-8 in TextEdit
# defaults write com.apple.TextEdit PlainTextEncoding -int 4
# defaults write com.apple.TextEdit PlainTextEncodingForWrite -int 4

# ###############################################################################
# # Twitter.app                                                                 #
# ###############################################################################

# # Show the app window when clicking the menu icon
# defaults write com.twitter.twitter-mac MenuItemBehavior -int 1

# # Enable the hidden ‘Develop’ menu
# defaults write com.twitter.twitter-mac ShowDevelopMenu -bool true

# # Open links in the background
# defaults write com.twitter.twitter-mac openLinksInBackground -bool true

# # Allow closing the ‘new tweet’ window by pressing `Esc`
# defaults write com.twitter.twitter-mac ESCClosesComposeWindow -bool true

# ###############################################################################
# # Kill affected applications                                                  #
# ###############################################################################

# for app in "Address Book" "Calendar" "Contacts" "Dashboard" "Dock" "Finder" \
#   "Safari" "SystemUIServer" "Terminal" "Twitter" "iTunes"; do
#   killall "$app" > /dev/null 2>&1
# done
# echo "Done. Note that some of these changes require a logout/restart to take effect."
