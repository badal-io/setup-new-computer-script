# Quick Install

This page provides the quickest way to get started with the setup script.

## Run the Script

To begin the setup process, open your macOS Terminal and paste the following command:

```bash title="Run in Terminal"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/badal-io/setup-new-computer-script/main/setup-new-computer.sh)"
```

This command will download and execute the main setup script.

## What to Expect

The script will guide you through the installation process. It will:

1.  Ask for your password upfront to run commands with `sudo`.
2.  Install essential command-line tools like Homebrew and Git.
3.  Install programming languages and runtimes (Go, Node.js, Ruby).
4.  Install common applications (browsers, Docker, etc.).
5.  Prompt you to choose optional IDEs to install.
6.  Configure your shell environment and system settings.

The entire process is automated, but it's a good idea to keep an eye on the output in case any step requires your attention.
