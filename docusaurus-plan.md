# Docusaurus Implementation Plan for setup-new-computer-script

This document outlines the plan for creating a comprehensive Docusaurus documentation site for the `setup-new-computer-script` repository. The goal is to create a user-friendly, maintainable, and detailed documentation site that can be integrated with Backstage.

## 1. Project Overview and Goals

The repository contains a set of shell scripts for automating the setup of a new developer's computer on macOS. The current documentation is a very detailed `README.md`.

The goals of this documentation project are:
- To create a structured and browsable documentation site using the existing Docusaurus installation in the `/docs` directory.
- To make the documentation easier to navigate and consume than a single `README.md` file.
- To provide detailed explanations of the scripts, their functions, and the tools they install.
- To ensure the documentation is accurate and up-to-date.
- To create a new, more concise root `README.md` that serves as a jumping-off point to the full documentation.

## 2. Docusaurus Configuration

The first step is to configure the existing Docusaurus site.

### 2.1. Update `docusaurus.config.ts`

The `docs/docusaurus.config.ts` file is currently using default placeholder values. It will be updated to reflect the project's information.

- **`title`:** "Setup New Computer Script"
- **`tagline`:** "Scripts and documentation for setting up a new developer computer at Badal-IO."
- **`url`:** Placeholder for Backstage deployment. Will be set to something like `https://backstage.example.com/catalog/default/component/setup-new-computer-script`.
- **`baseUrl`:** To be configured based on Backstage requirements.
- **`organizationName`:** "badal-io"
- **`projectName`:** "setup-new-computer-script"
- **`navbar` and `footer`:** Links will be updated to point to relevant project resources and the new documentation structure. The GitHub link will be retained.
- **`editUrl`:** The `editUrl` will be configured to point to the correct path in the repository to allow for easy contributions.

### 2.2. Install Docusaurus Themes and Plugins

To enhance the documentation, the following themes and plugins will be installed and configured:

- **`@docusaurus/theme-live-codeblock`:** For creating interactive shell script examples. This will be useful for demonstrating commands.
- **`docusaurus-plugin-mermaid`:** To create diagrams for visualizing the script's workflow and dependencies.

The installation will be done via `npm` or `yarn` within the `docs` directory, and the plugins will be added to the `docusaurus.config.ts` file.

## 3. Documentation Content and Structure

The content will be migrated from the root `README.md` and the scripts themselves into a structured Docusaurus site.

### 3.1. Sidebar and Document Structure (`sidebars.ts`)

The documentation will be organized into the following sections, defined in `docs/sidebars.ts`:

- **Introduction:** A high-level overview of the project, its purpose, and how to use the script. This will be adapted from the introduction of the current `README.md`.
- **Quick Start:**
  - `install.md`: Instructions for running the script.
- **What's Installed:** A detailed breakdown of all the installed components.
  - **Shell Setup:** `.bash_profile` and `.zprofile` modifications.
  - **Command-Line Tools:** `xcode-select`, `brew`, `bash`, `zsh-completions`, `git`.
  - **Languages:** Go, Node.js (with nvm), Ruby.
  - **Applications:** Browsers, Docker, Postman, etc.
  - **Optional IDEs:** VS Code, JetBrains Toolbox, etc.
  - **System Tweaks:** `defaults` commands and their effects.
- **Post-Installation:**
  - `github-ssh.md`: Instructions for setting up GitHub SSH authentication.
  - `badal-specifics.md`: Placeholder for Badal-IO specific setup (referencing the Confluence page).
  - `tips.md`: Tips for fixing ZSH errors, managing Node versions, and keeping tools up-to-date.
- **Script Deep Dive:**
  - `setup-new-computer.sh.md`: An explanation of the main script's structure, functions, and logic. This will include code snippets with explanations.
  - `functions.sh.md`: Documentation for the helper functions.
  - `badal-io.sh.md`: Documentation for the Badal-IO specific script.
- **For Other Companies:**
  - `forking.md`: The section from the `README.md` about how to adapt the script for other companies.
- **Contributing:**
  - `development.md`: How to contribute to the script and documentation.

### 3.2. Content Creation and Migration

- **Reuse Existing Content:** All the detailed information from the collapsible sections of the current `README.md` will be migrated into the corresponding new `.md` files.
- **Create New Content:** New content will be created to explain the scripts' logic and structure.
- **Use MDX:** We will use `.mdx` files to allow for interactive components like live code blocks and diagrams.

## 4. Fact Checking and Verification

The documentation must be accurate. The following steps will be taken to ensure accuracy:

- **Code Review:** The documentation for each installed component will be checked against the `setup-new-computer.sh` and `functions.sh` scripts to ensure the commands and configurations are correct.
- **External Links:** All external links will be checked. The GitHub help links for SSH keys will be verified. The placeholder for the Confluence link will be noted as such.
- **Corrections:** If any discrepancies are found between the old `README.md` and the actual code, the new documentation will reflect the correct information, and a note will be added to the page, like:
  > **Note:** The previous documentation for this section was outdated. It has been updated to reflect the current script's behavior.

## 5. New Root `README.md`

A new, more concise `README.md` will be created in the root of the repository. It will contain:

- A brief description of the project.
- Quick install instructions.
- A prominent link to the full Docusaurus documentation site for more details.
  - Links to specific pages in the Docusaurus site will be provided for key topics (e.g., "See what's installed", "Post-installation steps"). This allows for browsing the docs directly on GitHub.
- Basic instructions on how to contribute, pointing to the contributing guide in the Docusaurus site.

This new `README.md` will provide a cleaner entry point for developers and direct them to the comprehensive documentation.

## 6. Deployment

The user has specified that the documentation will be hosted in Backstage. The `docusaurus build` command creates a self-contained static site in the `build` directory. This directory can be served by any static web server. The plan will need to be adjusted based on the specifics of the Backstage integration, but the output of the Docusaurus build is standard.

This plan provides a clear path to creating a high-quality, maintainable documentation site for the `setup-new-computer-script` repository.
