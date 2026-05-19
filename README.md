# Setup a New Developer Computer

This script will help with the quick setup and installation of tools and applications for new developers at Badal-IO.

## Quick Install Instructions

Paste the command below in a Mac OS Terminal:
```
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/badal-io/setup-new-computer-script/main/setup-new-computer.sh)"
```

## What's Installed (v3.5.0+)

Versions are **never pinned** — every install resolves to whatever Homebrew, npm, nvm, or pyenv currently calls "latest stable".

- **Shell & core CLI**: Bash, Git, Git LFS, GitHub CLI, GNU sed/awk, coreutils, wget, yq, parallel, tmux, tig, lazygit, gitleaks, pwgen, telnet
- **Language toolchains**: Go, Node.js (latest **LTS** via nvm), Python (latest stable via pyenv), Rust, Deno, OpenJDK
- **Python tooling**: pyenv, uv, pipx, mkdocs, Black
- **JavaScript tooling**: pnpm (ships with pnpx), yarn, lefthook, Angular CLI, NX, Husky, create-docusaurus, **@google/gemini-cli**
- **Cloud / infra**: Google Cloud SDK, Helm, Podman, Dagger, Crane, Ko, spacectl, Cloudflare CLI, Specify, Terraform, Vault
- **Data**: Dolt, Neo4j, PostgreSQL 14, nginx
- **Linters / formatters**: Prettier, shfmt, clang-format, stylua, taplo
- **Apps**: Firefox, Chrome, Docker, Docker Desktop, Postman, Android Studio + Platform Tools, Inkscape, LocalSend, Cloudflare WARP, DevPod, Container Use
- **AI tooling**: **Claude Code** and **Claude Desktop** (both latest, via brew cask). The TELUS AI plugins marketplace and required/recommended plugins are installed by delegating to [`telus/ai-dev`'s `telus-setup.sh`](https://github.com/telus/ai-dev/blob/main/tools/claude-code/QUICKSTART.md) — requires `gh auth login` or SSH access to `telus/ai-dev`.

The shell profile (`~/.zprofile` / `~/.bash_profile`) is also augmented with: pyenv init + virtualenv-init, `nvm use default` on startup, cargo env, `~/.local/bin` (uv/pipx), optional bun, and `~/bin` on PATH. **No personal API keys or secrets are written** — those stay in your private dotfiles.

## Documentation

The main documentation for this project is hosted in Backstage.

For browsing on GitHub, you can find the documentation in the `/docs/docs` directory:

-   [Introduction](./docs/docs/intro.md)
-   **Getting Started**
    -   [Installation](./docs/docs/getting-started/installation.md)
    -   [Post-Installation](./docs/docs/getting-started/post-installation.md)
-   **What's Installed**
    -   [Shell Setup](./docs/docs/what-is-installed/shell-setup.md)
    -   [Command-Line Tools](./docs/docs/what-is-installed/command-line-tools.md)
    -   [Languages](./docs/docs/what-is-installed/languages.md)
    -   [Applications](./docs/docs/what-is-installed/applications.md)
    -   [System Tweaks](./docs/docs/what-is-installed/system-tweaks.md)
-   **Company-Specific Setup**
    -   [Badal-IO](./docs/docs/company-specific-setup/badal-io.md)
-   **Advanced Usage**
    -   [Node Management](./docs/docs/advanced-usage/node-management.md)
    -   [Keeping Tools Updated](./docs/docs/advanced-usage/keeping-tools-updated.md)
-   **For Maintainers**
    -   [Customization](./docs/docs/for-maintainers/customization.md)
    -   [Testing](./docs/docs/for-maintainers/testing.md)

## Running the Documentation Site Locally

To run the documentation site locally, navigate to the `/docs` directory and run the following commands:

```shell
npm install
npm start
```

To build the site for production, run:

```shell
npm run build
```