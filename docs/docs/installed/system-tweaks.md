# System Tweaks

### General: Expand save and print panel by default
```sh
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode -bool true
defaults write NSGlobalDomain NSNavPanelExpandedStateForSaveMode2 -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint -bool true
defaults write NSGlobalDomain PMPrintingExpandedStateForPrint2 -bool true
```

### General: Save to disk (not to iCloud) by default
```sh
defaults write NSGlobalDomain NSDocumentSaveNewDocumentsToCloud -bool false
```

### General: Avoid creating .DS_Store files on network volumes
```sh
defaults write com.apple.desktopservices DSDontWriteNetworkStores -bool true
```

### Typing: Disable smart quotes and dashes as they cause problems when typing code
```sh
defaults write NSGlobalDomain NSAutomaticQuoteSubstitutionEnabled -bool false
defaults write NSGlobalDomain NSAutomaticDashSubstitutionEnabled -bool false
```

### Typing: Disable press-and-hold for keys in favor of key repeat
```sh
defaults write NSGlobalDomain ApplePressAndHoldEnabled -bool false
```

### Finder: Show status bar and path bar
```sh
defaults write com.apple.finder ShowStatusBar -bool true
defaults write com.apple.finder ShowPathbar -bool true	
```

### Finder: Disable the warning when changing a file extension
```sh
defaults write com.apple.finder FXEnableExtensionChangeWarning -bool false
```

### Finder: Show the ~/Library folder
```sh
chflags nohidden ~/Library
```

### Safari: Enable Safari’s Developer Settings
```sh
defaults write com.apple.Safari IncludeInternalDebugMenu -bool true
defaults write com.apple.Safari IncludeDevelopMenu -bool true
defaults write com.apple.Safari WebKitDeveloperExtrasEnabledPreferenceKey -bool true
defaults write com.apple.Safari com.apple.Safari.ContentPageGroupIdentifier.WebKit2DeveloperExtrasEnabled -bool true
defaults write NSGlobalDomain WebKitDeveloperExtras -bool true
```

### Chrome: Disable the all too sensitive backswipe on Trackpads and Magic Mice
```sh
# Note: The chrome defaults can cause your Chrome browser to display a message stating
# that Chrome is "Managed by your organization" when it isn't
# 
# To view policies that are affecting this message, view the following pages:
# chrome://policy and chrome://management/
# 
# To quickly remove Chrome default overrides, run the following commands:
# defaults delete com.google.Chrome
# defaults delete com.google.Chrome.canary
#
defaults write com.google.Chrome AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome AppleEnableMouseSwipeNavigateWithScrolls -bool false
defaults write com.google.Chrome.canary AppleEnableMouseSwipeNavigateWithScrolls -bool false	
```

### Chrome: Use the system print dialog and expand dialog by default
```sh
# Note: The chrome defaults can cause your Chrome browser to display a message stating
# that Chrome is "Managed by your organization" when it isn't
# 
# To view policies that are affecting this message, view the following pages:
# chrome://policy and chrome://management/
# 
# To quickly remove Chrome default overrides, run the following commands:
# defaults delete com.google.Chrome
# defaults delete com.google.Chrome.canary
#
defaults write com.google.Chrome DisablePrintPreview -bool true
defaults write com.google.Chrome.canary DisablePrintPreview -bool true
defaults write com.google.Chrome PMPrintingExpandedStateForPrint2 -bool true
defaults write com.google.Chrome.canary PMPrintingExpandedStateForPrint2 -bool true
```
