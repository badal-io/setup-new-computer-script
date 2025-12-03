# Managing Node Versions

## Installing and Upgrading Node and NPM versions
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

## Switching Node Versions
Use nvm to switch between installed versions of Node. ([Official docs](https://github.com/nvm-sh/nvm/blob/main/README.md#usage))
```sh
# To switch to the latest Node
nvm use node        # "node" is an alias for the latest version

# Switch to long term support (lts) version of Node
nvm use --lts
 
# To switch to a specific verison of Node
nvm use 18          # or 10.10.0, 8.9.1, etc
```
