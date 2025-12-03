# Languages and Runtimes

The setup script installs several key programming languages and runtimes that are commonly used in modern web development.

## Ruby

- **Installed via:** `brew install ruby`

The script installs a modern version of Ruby via Homebrew. While macOS comes with a system version of Ruby, it's often outdated. Installing it from Homebrew is the recommended practice for development, as it provides a more recent version and is easier to manage without interfering with the system.

## Go (Golang)

- **Installed via:** `brew install go`

The latest stable version of Go is installed. The script also performs the following essential configuration:
- Creates the `~/go` directory, which serves as the default workspace.
- Sets environment variables (`GOPATH`, `GOBIN`) to configure the Go workspace.
- Configures `GOPRIVATE` to allow fetching private modules from the `github.com/vendasta` organization.

## Node.js (via NVM)

The script takes a more flexible approach to Node.js by using **Node Version Manager (NVM)**.

### NVM

- **Command:** `curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/.../install.sh | bash`

NVM is a command-line tool that allows you to install and manage multiple versions of Node.js on the same machine. This is crucial for working on different projects that may have different Node.js version requirements.

### Node.js

- **Command:** `nvm install 20`

The script installs **Node.js version 20**, which is the latest Long-Term Support (LTS) version at the time of writing. After installation, it sets this version as the default for your shell.

### Global NPM Packages

The script also installs the following global NPM packages, which provide useful command-line utilities:

- **`@angular/cli`**: The command-line interface for Angular.
- **`nx`**: A build system with a focus on monorepos.
- **`husky`**: A tool for managing Git hooks.
- **`node-sass`**: Provides bindings for Node.js to LibSass.
- **`node-gyp`**: A cross-platform command-line tool written in Node.js for compiling native addon modules for Node.js.
