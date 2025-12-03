# Setup New Computer Script

The `setup-new-computer.sh` script is the main entry point for setting up a new developer machine. It guides the user through the installation of essential tools and applications.

## Script Logic and Flow

The script performs the following steps in order:

1.  **IDE Selection**: Prompts the user to select optional IDEs and tools to install.
2.  **Shell Profiles**: Creates and configures `.bash_profile` and `.zprofile` with necessary paths and aliases.
3.  **Xcode CLI Tools**: Checks for and installs the Xcode Command Line Tools.
4.  **Homebrew**: Installs the Homebrew package manager if it's not already present.
5.  **Brew Packages**: Installs essential command-line tools like Git, Bash, and Ruby.
6.  **Applications**: Installs common applications like Firefox, Chrome, Docker, and Postman, along with the optional IDEs selected earlier.
7.  **Go**: Installs the Go programming language.
8.  **Node.js**: Installs Node.js using the Node Version Manager (nvm).
9.  **Google Cloud SDK**: Installs the Google Cloud SDK and its components.
10. **System Tweaks**: Applies various macOS system tweaks to improve the development experience.
11. **Git Configuration**: Configures Git with user information and sets up credential storage.
12. **Badal-IO Script**: Clones and executes the `badal-io.sh` script for company-specific setup.

## Flowchart

The following diagram illustrates the high-level flow of the script:

```mermaid
graph TD
    A[Start] --> B[Select Optional IDEs]
    B --> C[Setup Shell Profiles]
    C --> D{Xcode CLI Tools installed?}
    D -- No --> E[Install Xcode CLI Tools & Wait for user]
    E --> F
    D -- Yes --> F
    F{Homebrew installed?}
    F -- No --> G[Install Homebrew]
    G --> H
    F -- Yes --> H
    H[Install Brew Packages (bash, completions, ruby, git)]
    H --> I[Install Applications (Firefox, Chrome, Docker, etc.)]
    I --> J[Install Go]
    J --> K[Install Node.js via NVM]
    K --> L[Install Google Cloud SDK]
    L --> M[Apply System Tweaks]
    M --> N[Configure Git]
    N --> O[Clone and execute badal-io.sh]
    O --> P[End]
```
