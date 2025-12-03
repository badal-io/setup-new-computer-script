# Badal-IO Script

The `badal-io.sh` script is executed by the main `setup-new-computer.sh` script to handle company-specific setup for Badal-IO.

## Tools Installed

This script installs the following command-line tools using Homebrew:

-   **Terraform**: An infrastructure as code tool for building, changing, and versioning infrastructure safely and efficiently.
-   **Vault CLI**: A command-line interface for HashiCorp's Vault, a tool for managing secrets.

The script adds the HashiCorp tap to Homebrew to make these tools available for installation.

## Future tools
The script also contains a commented-out section to install `kubectl`, the Kubernetes command-line tool. As this is not currently installed, it may be added in a future version of the script.
