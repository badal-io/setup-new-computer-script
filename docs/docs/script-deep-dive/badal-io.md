# Deep Dive: badal-io.sh

This script handles the final, company-specific setup steps for developers at Badal-IO.

## Execution

The `badal-io.sh` script is not run directly. Instead, it is **sourced** by the main `setup-new-computer.sh` script near the end of its execution.

```bash
. setup-new-computer-script/badal-io.sh
```

This is done so that the `badal-io.sh` script has access to the helper functions (like `printStep` and `exitscript`) that are already defined in the main script. The script includes a check to ensure it is being sourced and will exit with an error if it's run as a standalone executable.

## What It Does

The script performs the following actions:

1.  **Adds the HashiCorp Tap:** It first runs `brew tap hashicorp/tap` to add the official HashiCorp tap to Homebrew. This is necessary to install their software.
2.  **Installs Terraform:** It then installs Terraform, the infrastructure-as-code tool.
3.  **Installs Vault CLI:** Finally, it installs the command-line interface for HashiCorp Vault, which is used for secret management.

If any of these steps fail, the script will call the `exitscript` function to terminate the entire setup process.
