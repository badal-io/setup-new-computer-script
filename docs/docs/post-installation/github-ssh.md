# GitHub SSH Authentication

After running the setup script, one of the most important next steps is to set up SSH authentication with GitHub. This allows you to securely connect to GitHub without having to enter your username and password every time you push or pull code.

The setup script helps by performing two minor steps:
- It ensures the `~/.ssh` directory exists.
- It adds GitHub.com's host key to your `~/.ssh/known_hosts` file, which prevents a prompt on your first connection.

However, you still need to generate your own SSH key and add it to your GitHub account.

## 1. Generate a New SSH Key

First, check if you already have an SSH key.

```bash
ls -al ~/.ssh
```

If you see files named `id_rsa.pub` or `id_ed25519.pub`, you may already have a key. If not, or if you want to create a new one, you can generate one. The `ed25519` algorithm is recommended.

1.  Open your terminal.
2.  Paste the text below, substituting in your GitHub email address.

    ```bash
    ssh-keygen -t ed25519 -C "your_email@example.com"
    ```

3.  When you're prompted to "Enter a file in which to save the key," press Enter to accept the default file location.
4.  At the prompt, type a secure passphrase. This is highly recommended.

## 2. Add Your SSH Key to the ssh-agent

To use the key, you need to add it to the `ssh-agent`.

1.  Start the ssh-agent in the background.

    ```bash
    eval "$(ssh-agent -s)"
    ```

2.  If you are on macOS Sierra 10.12.2 or newer, you will need to modify your `~/.ssh/config` file to automatically load keys into the `ssh-agent` and store passphrases in your keychain.

    ```bash
    Host *
      AddKeysToAgent yes
      UseKeychain yes
      IdentityFile ~/.ssh/id_ed25519
    ```

3.  Add your SSH private key to the `ssh-agent` and store your passphrase in the keychain.

    ```bash
    ssh-add --apple-use-keychain ~/.ssh/id_ed25519
    ```

## 3. Add the SSH Key to Your GitHub Account

1.  Copy the SSH public key to your clipboard.

    ```bash
    pbcopy < ~/.ssh/id_ed25519.pub
    ```

2.  Go to your GitHub account settings:
    - In the upper-right corner of any page, click your profile photo, then click **Settings**.
    - In the user settings sidebar, click **SSH and GPG keys**.
3.  Click **New SSH key** or **Add SSH key**.
4.  In the "Title" field, add a descriptive label for the new key (e.g., "My M1 MacBook Air").
5.  Paste your key into the "Key" field.
6.  Click **Add SSH key**.
7.  If prompted, confirm your GitHub password.

## 4. Test Your SSH Connection

You can now test your connection:

```bash
ssh -T git@github.com
```

You should see a message like this:

> Hi `username`! You've successfully authenticated, but GitHub does not provide shell access.
