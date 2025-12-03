# Contributing

Contributions to the `setup-new-computer-script` are welcome! Whether you're fixing a bug, adding a new feature, or improving the documentation, your help is appreciated.

## Development Workflow

1.  **Fork the Repository:** Start by forking the [main repository](https://github.com/badal-io/setup-new-computer-script) on GitHub.

2.  **Clone Your Fork:** Clone your forked repository to your local machine.

    ```bash
    git clone git@github.com:Your-Username/setup-new-computer-script.git
    ```

3.  **Create a Branch:** Create a new branch for your changes.

    ```bash
    git checkout -b your-feature-or-fix
    ```

4.  **Make Your Changes:**
    - **Script Changes:** Modify the shell scripts (`.sh` files).
    - **Documentation Changes:** Edit the Markdown (`.md` or `.mdx`) files in the `docs/` directory.

5.  **Test Your Changes:**
    - **Testing the Script:** The best way to test changes to the script is on a fresh macOS virtual machine. This ensures that your changes work as expected in a clean environment. [VirtualBuddy](https://github.com/insidegui/VirtualBuddy) is a good option for creating macOS VMs on Apple Silicon.
    - **Testing the Documentation:** To preview your documentation changes, navigate to the `docs/` directory and run the Docusaurus development server:
      ```bash
      cd docs
      npm install
      npm start
      ```
      This will open the documentation site in your browser at `http://localhost:3000`.

6.  **Commit Your Changes:** Write a clear and concise commit message.

7.  **Push to Your Fork:**

    ```bash
    git push origin your-feature-or-fix
    ```

8.  **Create a Pull Request:** Open a pull request from your forked repository to the `main` branch of the original repository. Provide a detailed description of your changes in the pull request.

## Style and Conventions

- **Shell Scripts:** Follow the existing style and formatting of the shell scripts. Use helper functions like `printStep` where appropriate.
- **Documentation:** Write in a clear and concise manner. Ensure that any changes to the script are also reflected in the documentation.
- **Commit Messages:** Use conventional commit messages (e.g., `feat: Add new feature`, `fix: Fix a bug`, `docs: Update documentation`).
