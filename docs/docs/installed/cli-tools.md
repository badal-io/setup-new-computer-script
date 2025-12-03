# Command-line Tools

### Xcode CLI Development Tools
```sh
xcode-select --install
```

### Homebrew (brew)
```sh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"

# Fix brew insecure directories warning (zsh)
chmod go-w "$(brew --prefix)/share"
```

### Bash (with Bash Completions)
```sh
brew install bash
brew install bash-completion
```

### Zsh Completions
```sh
brew install zsh-completions
```

### Git
```sh
brew install git
```
