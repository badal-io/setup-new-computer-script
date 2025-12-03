# Command-Line Tools

The setup script installs a suite of essential command-line tools that are fundamental for modern development workflows.

## Core Tools

### Xcode Command Line Tools

- **Command:** `xcode-select --install`

This is one of the first and most critical steps. The Xcode Command Line Tools provide a set of essential tools for software development on macOS, including compilers (like Clang), `make`, and other utilities that are required by many other tools, including Homebrew.

### Homebrew

- **URL:** [https://brew.sh/](https://brew.sh/)

Homebrew is the de facto package manager for macOS. The script installs it and uses it to install almost every other tool and application. It simplifies the process of installing, updating, and managing software.

### Shells and Completion

- **`bash`**: The script installs the latest version of Bash from Homebrew, which is typically more up-to-date than the version that ships with macOS.
- **`bash-completion`**: Provides enhanced tab-completion for the Bash shell.
- **`zsh-completions`**: Provides additional tab-completion definitions for Zsh, the default shell on modern macOS.

### Git

- **URL:** [https://git-scm.com/](https://git-scm.com/)

The script installs the latest version of Git, the distributed version control system that is essential for source code management. It also configures Git to use the macOS Keychain for storing credentials, so you don't have to type your password every time.

## Cloud and DevOps

### Google Cloud SDK

- **URL:** [https://cloud.google.com/sdk](https://cloud.google.com/sdk)

The Google Cloud SDK is a set of tools for managing resources on Google Cloud Platform (GCP). The script installs the main SDK and the following important components:

- **`app-engine-go`**: For deploying Go applications to App Engine.
- **`app-engine-python`**: For deploying Python applications to App Engine.
- **`app-engine-python-extras`**: Additional libraries for Python development on App Engine.
- **`kubectl`**: The command-line tool for interacting with Kubernetes clusters.
- **`docker-credential-gcr`**: A credential helper that allows Docker to easily authenticate with Google Container Registry (GCR).
