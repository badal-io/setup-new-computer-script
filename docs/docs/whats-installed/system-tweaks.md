# System Tweaks

The setup script applies a number of tweaks to the macOS settings to create a more developer-friendly environment. These changes are made using the `defaults` command-line utility.

## General UI/UX

- **Expand Save and Print Panels:** All "Save" and "Print" dialogs will be fully expanded by default, showing all available options without needing to click "Show Details."
- **Save to Disk by Default:** When saving a new document, the default location will be your local disk instead of iCloud.
- **Disable `.DS_Store` on Network Drives:** Prevents macOS from creating `.DS_Store` files on network shares, which can clutter up shared repositories.

## Typing

- **Disable Smart Quotes/Dashes:** Smart quotes and dashes automatically replace straight quotes (`"`) and hyphens (`-`) with their curly typographic equivalents. While nice for writing, this can cause syntax errors in code. The script disables this feature.
- **Enable Key Repeat:** The script disables the "press-and-hold" feature that shows accented characters, in favor of traditional key repeat. This is generally preferred for coding, as it allows you to hold down a key to repeat a character quickly (e.g., for creating dividers or deleting text).

## Finder

- **Show Status Bar and Path Bar:** The Finder will display the status bar (showing item counts and disk space) and the path bar (showing the full path to the current folder) by default.
- **Disable File Extension Change Warning:** The script disables the annoying confirmation dialog that appears every time you change a file's extension.
- **Show `~/Library` Folder:** The user's `Library` folder (`~/Library`) is unhidden, making it easier to access application support files and caches.

## Safari

- **Enable Developer Menu:** The script enables the "Develop" menu in Safari, which provides access to developer tools, the web inspector, and other features for web development.

## Google Chrome

- **Disable Backswipe Navigation:** Disables the sometimes overly sensitive two-finger swipe gesture for navigating back and forward in Chrome's history.
- **Use System Print Dialog:** Forces Chrome to use the standard macOS system print dialog instead of its own built-in print preview screen.
