# Post-Installation

After you have run the script, please complete the following steps to finish setting up your computers:

1.  **Github Command-line SSH Authentication**
    Git is now configured to use SSH by default for github urls. You will need to generate and add an SSH key to your Github account or you will run into errors. Do the following to authorize Github on your computer:
    - [Generate an SSH key for your new computer](https://help.github.com/en/github/authenticating-to-github/generating-a-new-ssh-key-and-adding-it-to-the-ssh-agent)
    - [Add the SSH public key to your Github account](https://help.github.com/en/github/authenticating-to-github/adding-a-new-ssh-key-to-your-github-account)

2.  **Badal Specific Setup**
    Follow our onboarding document to complete your setup:
    - Placeholder: this will link to a confluence page, but I don't see anything that exists yet

    *Correction: The original README contained a placeholder link for a Confluence page. This placeholder has been kept as is, as the page does not yet exist.*

---
## Post Installation Tips

**Fix ZSH Errors**
If you are using ZSH as your shell (default in newer Mac OS versions) you may get this error after running the setup script:
 
> zsh compinit: insecure directories, run compaudit for list.
> Ignore insecure directories and continue [y] or abort compinit [n]?

You can fix this by running the following command in your terminal:
```sh
compaudit | xargs chmod g-w
```

**Installing and Upgrading Node and NPM versions**
There is a handy command in your `.bash_profile` and `.zsh_profile` that will automatically install your chosen version of Node and NPM, re-install any global npm packages (like angular cli), and set the newly installed version as default.

To upgrade to the latest version of Node 20, re-install global npm packages, and set it as default, run the following command:
```sh
node-upgrade 20
```

If you wish to install a version of node without reinstalling all global packages or setting it to be default, you can use NVM directly ([Official docs](https://github.com/nvm-sh/nvm/blob/main/README.md#usage)):
```sh
# Install a specific version of Node
nvm install 18      # or 10.10.0, 8.9.1, etc
```

<br />

**Switching Node Versions**
Use nvm to switch between installed versions of Node. [Official docs](https://github.com/nvm-sh/nvm/blob/main/README.md#usage)
```sh
# To switch to the latest Node
nvm use node        # "node" is an alias for the latest version

# Switch to long term support (lts) version of Node
nvm use --lts
 
# To switch to a specific verison of Node
nvm use 18          # or 10.10.0, 8.9.1, etc
```

<br />
  
**Keeping your tools up-to-date**
Homebrew can keep your command-line tools and languages up-to-date.
```sh
# List what needs to be updated
brew update
brew outdated
 
# Upgrade a specific app/formula (example: git)
brew upgrade git

# Upgrade everything
brew upgrade
  
# List previous versions installed (example: git)
brew switch git list
 
# Roll back to a currently installed previous version (example: git 2.25.0)
brew switch git 2.25.0
```
