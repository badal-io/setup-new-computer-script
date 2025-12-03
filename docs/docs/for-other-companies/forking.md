# Adapting the Script for Your Company

This script was designed to be forked and adapted for use by other organizations. Here are some tips and guidance on how to customize it for your own needs.

## Guiding Principles

- **Keep it Simple:** The script is intentionally straightforward. It's a single, executable shell script with minimal dependencies. This makes it easy to understand, debug, and modify.
- **Idempotent:** The script can be run multiple times on the same machine without causing problems. It checks for existing installations before installing new software, so it will only install what's missing.

## Customization Tips

- **Review the Installed Packages:** The `setup-new-computer.sh` script installs a specific set of tools tailored to Badal-IO's technology stack (e.g., Go, Node.js, Google Cloud SDK). You should review the "Brew Packages" and "Applications" sections and change them to match the tools your company uses.

- **Adjust Language Versions:** The script locks the Node.js version to a specific LTS release via NVM. You will likely want to change this to match your company's standard.

- **Customize Shell Profiles:** The `writetoBashProfile` and `writetoZshProfile` functions append configuration to the user's shell profiles. You may want to add, remove, or change environment variables (like `GOPRIVATE`) to match your environment.

- **Update the `badal-io.sh` Script:** This script is designed for company-specific installations. You should rename this file (e.g., `your-company.sh`) and modify it to install any internal tools, repositories, or configurations your team needs. Remember to update the call to it at the end of `setup-new-computer.sh`.

- **Style and Branding:** You can customize the ASCII art logo at the top of the script to add your own company's branding.

- **Update the Documentation:** If you fork the script, you should also update the documentation to reflect your changes. This will ensure that your new developers have a clear and accurate guide.

- **License:** This script is MIT licensed. If you reuse it, please be sure to include the [LICENSE file](https://github.com/badal-io/setup-new-computer-script/blob/main/LICENSE).
