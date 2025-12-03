# Docusaurus Documentation Plan for `setup-new-computer-script`

## 1. Executive Summary

This plan outlines the steps to build a comprehensive documentation site for the `setup-new-computer-script` repository using the existing Docusaurus installation.

The current documentation is a single, large `README.md`. While detailed, it is not easily navigable. The goal is to migrate this content into a structured, user-friendly Docusaurus site, and then replace the root `README.md` with a more concise version.

## 2. Project Goal

To create a complete, accurate, and easy-to-navigate documentation site that fully describes the functionality, installation, and usage of the setup scripts.

## 3. Docusaurus Site Configuration

The Docusaurus site in the `/docs` directory is a default template. The first step is to configure it properly.

**Tasks:**

*   **Update `docs/docusaurus.config.ts`**:
    *   Set `title` to "Developer Setup Script".
    *   Set `tagline` to "Scripts and tools for setting up a new developer machine at Badal-IO".
    *   Set `url` to the production URL (e.g., the GitHub Pages URL).
    *   Set `baseUrl` to the repository name: `/setup-new-computer-script/`.
    *   Set `organizationName` to `badal-io`.
    *   Set `projectName` to `setup-new-computer-script`.
    *   Update the `navbar` and `footer` links to point to the correct repository and remove irrelevant links (like Stack Overflow, Discord, or the Docusaurus blog).
    *   Update the "edit this page" URL to point to the correct path in the project's repository.
*   **Update `docs/package.json`**:
    *   Add a `description` field: "Documentation for the developer setup script."
    *   Add a `repository` field pointing to the GitHub repository.
*   **Static Assets**:
    *   Replace the placeholder logo (`docs/static/img/logo.svg`) and favicon (`docs/static/img/favicon.ico`) with project-specific assets if available. If not, create a simple text-based logo.
    *   Create a `.nojekyll` file in the `docs/static/` directory to prevent issues with GitHub Pages.

## 4. Content Migration and Creation

The bulk of the work is migrating content from the root `README.md` into a logical structure within `docs/docs/`.

**Proposed Structure (`docs/docs/` directory):**

*   **`_category_.json`**:
    *   Configure the main category label, e.g., "Setup Script Documentation".

*   **`intro.md` (Update)**:
    *   This will be the landing page.
    *   It will contain the "Quick Install Instructions" and "Manual Install Instructions".

*   **`post-installation/` (New Directory)**:
    *   `_category_.json`: Label "Post-Installation".
    *   `github-ssh.md`: Content from the "Github Command-line SSH Authentication" section.
    *   `badal-specifics.md`: Content from the "Badal Specific Setup" section. I will note that the Confluence link is a placeholder.

*   **`usage-tips/` (New Directory)**:
    *   `_category_.json`: Label "Usage Tips".
    *   `fixing-zsh-errors.md`: Content from the "Fix ZSH Errors" section.
    *   `managing-node.md`: Content from "Installing and Upgrading Node and NPM versions" and "Switching Node Versions".
    *   `updating-tools.md`: Content from "Keeping your tools up-to-date".

*   **`what-is-installed/` (New Directory)**:
    *   `_category_.json`: Label "What's Installed".
    *   `shell-profiles.md`: The content from the `.bash_profile` and `.zprofile` `<details>` sections. Will use code blocks for clarity.
    *   `cli-tools.md`: Content for "Xcode CLI Development Tools", "Homebrew", "Bash", "Zsh Completions", "Git".
    *   `languages.md`: Content for "Go", "Node", "Ruby".
    *   `gcloud-sdk.md`: Content for "Google Cloud Components".
    *   `applications.md`: Content for "Firefox", "Google Chrome", "Docker", etc.
    *   `system-tweaks.md`: All content from the "System Tweaks" section.
    *   `git-configuration.md`: Content for "Set Git to store credentials in Keychain" and "Set git display name and email".

*   **`customization/` (New Directory)**:
    *   `_category_.json`: Label "Customization".
    *   `overview.md`: The content from "Tips for using the script at your own company".
    *   `badal-io-specifics.md`: Documentation for the `badal-io.sh` script, explaining that it installs Terraform and Vault.

**Fact Checking:**

*   All external links (like the GitHub Help pages) will be checked for validity.
*   The `README.md` mentions a `vendasta/setup-new-computer-script` repo. This seems to be the origin. I will verify if this is intentional and add a note about the project's history. *Correction*: The script itself mentions being "Largely lifted from Vendasta's script". This should be preserved as an attribution. The license file should also be checked.

## 5. Theme and Plugin Enhancements

To improve the documentation quality, the following plugins will be added:

*   **Mermaid.js**: For creating diagrams. This will be useful for creating a flowchart illustrating the execution flow of `setup-new-computer.sh`.
    *   **Task**: Add the `docusaurus-plugin-mermaid` package and configure it in `docusaurus.config.ts`.
    *   **Task**: Create a Mermaid diagram in a new `architecture/overview.md` page showing the script's main stages.
*   **Live Code Blocks**: The script installs many command-line tools. While a full live-code environment isn't necessary, ensuring clear and copy-able code blocks is crucial. The default Prism theme is sufficient, but I will ensure all shell commands are in `bash` or `sh` blocks for proper highlighting.

## 6. New Root `README.md`

Once the Docusaurus site is populated, the root `README.md` will be replaced with a simpler version.

**Plan for new `README.md`:**

*   A brief one-paragraph description of the project.
*   A prominent link to the new Docusaurus documentation site.
*   The "Quick Install Instructions" for convenience.
*   A "Development" section explaining how to run the Docusaurus site locally.
*   Keep the license information.

## 7. Deployment Plan

*   The site will be deployed using GitHub Pages.
*   A GitHub Actions workflow will be created in `.github/workflows/docs.yml` to automatically build and deploy the Docusaurus site to the `gh-pages` branch whenever a change is merged into the `main` branch. This is a Docusaurus best practice.

This comprehensive plan will result in a professional, easy-to-maintain documentation site.
