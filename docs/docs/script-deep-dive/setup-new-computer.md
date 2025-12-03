# Deep Dive: setup-new-computer.sh

This is the main entry point for the entire setup process. This document breaks down its structure and logic.

## Structure

The script is organized into the following main sections:

1.  **Header and Configuration:** Contains metadata about the script (author, version) and the configuration for the optional IDE menu.
2.  **Functions:** A set of helper functions for printing formatted output (headings, errors, dividers) and for writing content to the shell profile files.
3.  **IDE Selection Menu:** An interactive loop that displays the IDE options and waits for the user to make selections.
4.  **Shell Profile Setup:** Prepares `~/.bash_profile` and `~/.zprofile` by creating them if they don't exist and appending the necessary shell configurations.
5.  **Main Payload:** The core of the script, where all the installations happen.
6.  **Git Setup:** Configures global Git settings.
7.  **Badal-IO Specific Steps:** Clones this repository and executes the `badal-io.sh` script for company-specific setup.
8.  **Completion Message:** Informs the user that the script is finished and provides a link to the post-installation instructions.

## Logic Flow

1.  **IDE Selection:** The script first presents the user with a menu of optional IDEs and tools. It waits for the user to make their selections before proceeding.

2.  **Shell Environment:** It then immediately sets up the shell profiles (`.bash_profile` for Bash, `.zprofile` for Zsh). This is done early to ensure that any subsequent steps that rely on environment variables or path modifications will work correctly in new shell sessions.

3.  **Xcode and Homebrew:** The script installs the Xcode Command Line Tools and then Homebrew. These are foundational dependencies for almost everything else. The script also dynamically adjusts the system `PATH` to prioritize Homebrew's binaries.

4.  **Core Packages and Apps:** It proceeds to install a series of command-line tools and desktop applications using `brew install` and `brew install --cask`. It checks if an application is already installed before attempting to install it.

5.  **Language Runtimes:** Go and Node.js (via NVM) are installed and configured. This includes setting up workspaces, environment variables, and installing global packages.

6.  **System Tweaks:** A series of `defaults write` commands are executed to apply various quality-of-life improvements to macOS and common applications.

7.  **Git Configuration:** It sets up Git with some sensible defaults, including credential storage in the macOS Keychain. It also prompts the user for their name and email if they are not already configured.

8.  **Final Steps:** The script finishes by running the Badal-IO specific script and then displays a completion message with a link to further instructions.
