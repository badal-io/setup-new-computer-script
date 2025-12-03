# Tips and Tricks

Here are a few tips for managing your new development environment after the setup script has finished.

## Managing Node.js Versions with NVM

The script installs [NVM (Node Version Manager)](https://github.com/nvm-sh/nvm), which makes it easy to switch between different Node.js versions.

- **List installed versions:** `nvm ls`
- **Install a new version:** `nvm install 22`
- **Switch to a different version:** `nvm use 22`
- **Set a default version:** `nvm alias default 22`

### Upgrading Node and Reinstalling Global Packages

The script adds a handy `node-upgrade` function to your shell profile. This command will install a new version of Node.js and automatically reinstall all the global packages you had with your previous version.

```bash
# Example: Upgrade to Node.js 22
node-upgrade 22
```

## Keeping Your Tools Up-to-Date

It's a good practice to periodically update the tools installed by Homebrew.

- **Update Homebrew itself and all formulas:**

  ```bash
  brew update
  ```

- **Upgrade all outdated packages:**

  ```bash
  brew upgrade
  ```

- **Upgrade a specific package:**

  ```bash
  brew upgrade <package_name>
  ```

## Fixing Common Zsh Errors

Zsh is powerful, but sometimes its completion system can get out of sync.

### `zsh compinit: insecure directories`

You might see this warning if the permissions on a directory in your `fpath` are too open. The setup script attempts to fix this for Homebrew's directory, but it can happen with other directories.

You can often fix this by running:

```bash
chmod go-w /path/to/insecure/directory
```

### Rebuilding the Completion Dump File

If you find that tab-completion is not working as expected, you can force Zsh to rebuild its completion dump file.

```bash
rm -f ~/.zcompdump
exec zsh
```

Upon restarting the shell, a new `.zcompdump` file will be generated.
