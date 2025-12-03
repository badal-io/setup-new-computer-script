# Shell Setup

The setup script makes several important modifications to your shell environment to ensure that all the installed tools work correctly and to provide a better command-line experience.

These changes are applied to both `~/.bash_profile` (for Bash) and `~/.zprofile` (for Zsh).

## Key Modifications

### Homebrew Path

The script ensures that Homebrew's binary path is at the beginning of your system's `PATH`. This is crucial for making sure that tools installed by Homebrew are used by default instead of system-provided versions.

- **Intel Macs:** `/usr/local/bin`
- **Apple Silicon Macs:** `/opt/homebrew/bin`

### Bash and Zsh Autocompletion

To provide a rich tab-completion experience in the terminal, the script configures:

- **Bash Completion:** via `bash-completion` from Homebrew.
- **Zsh Completion:** Sets up `compinit`, `bashcompinit`, and adds zsh-completions to the `fpath`.

### Go (Golang) Environment

The following environment variables are configured for Go development:

- `GOPRIVATE="github.com/vendasta"`: To allow `go get` to fetch private modules from Vendasta's GitHub organization.
- `GOPROXY="direct"`: To fetch modules directly.
- `GO111MODULE="on"`: To enforce Go modules.
- `GOPATH` and `GOBIN`: Standard Go workspace paths are set up in your home directory (`~/go`).

### NVM (Node Version Manager)

The script installs and configures NVM to manage Node.js versions.

- `NVM_DIR` is set to `~/.nvm`.
- The NVM source script and bash completion are loaded, making the `nvm` command available in your shell.

### Node.js Memory Limit

- `NODE_OPTIONS=--max_old_space_size=12000`: This increases the default memory available to Node.js processes. This is particularly useful for building large applications (e.g., Angular projects) that might otherwise run out of memory.

### `node-upgrade` Helper Function

A convenient shell function, `node-upgrade`, is added to your profile. It simplifies the process of upgrading to a new Node.js version while reinstalling all the global packages from your previous version.

```bash
# Example: Upgrade to Node.js 22
node-upgrade 22
```

### Husky (`.huskyrc`)

For projects that use [Husky](https://typicode.github.io/husky/) for Git hooks, the script creates a `~/.huskyrc` file. This file ensures that NVM is loaded correctly before any Husky hooks are run, which is important for making sure the hooks use the project's correct Node.js version.
