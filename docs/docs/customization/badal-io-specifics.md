# Badal-IO Specifics

The `badal-io.sh` script is sourced by the main `setup-new-computer.sh` script and contains installations specific to Badal-IO's development environment.

It performs the following installations:

- **HashiCorp Tap**: Adds the official HashiCorp tap to Homebrew to access their formulae.
- **Terraform**: Installs the latest version of the Terraform CLI.
- **Vault CLI**: Installs the latest version of the Vault CLI.
