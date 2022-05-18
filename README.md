# Steps to bootstrap a new Mac

1. Install Apple's Command Line Tools, which are prerequisites for Git and Homebrew.

```zsh
xcode-select --install
```

2. Clone repo into new hidden directory.

```zsh
git clone https://github.com/xaeli/dotenv.git ~/.dotfiles
```

3. Create symlinks in the Home directory to the real files in the repo.

There are better and less manual ways to do this;
investigate install scripts and bootstrapping tools.

```zsh
ln -s ~/.dotfiles/.zshrc ~/.zshrc
```
```zsh
ln -s ~/.dotfiles/.gitconfig ~/.gitconfig
```

4. Install Homebrew, followed by the software listed in the Brewfile.

These could also be in an install script.

### Install Homebrew
```zsh
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)" |
echo 'eval "$(/opt/homebrew/bin/brew shellenv)"' >> /Users/whitte/.zprofile |
eval "$(/opt/homebrew/bin/brew shellenv)"
```

#### Then pass in the Brewfile location...
```zsh
brew bundle --file ~/.dotfiles/Brewfile
```

#### ...or move to the directory first.
```zsh
cd ~/.dotfiles && brew bundle
```

## TODO List

* Learn how to use [`defaults`](https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command "https://macos-defaults.com/#%F0%9F%99%8B-what-s-a-defaults-command") to record and restore System Preferences and other macOS configurations.
* Organize these growing steps into multiple script files.
* Automate symlinking and run script files with a bootstrapping tool like [Dotbot](https://github.com/anishathalye/dotbot "https://github.com/anishathalye/dotbot").
* Revisit the list in [`.zshrc`](https://vscode-vfs+github.vscode-resource.vscode-webview.net/eieioxyz/Beyond-Dotfiles-in-100-Seconds/.zshrc ".zshrc") to customize the shell.
* Make a checklist of steps to decommission your computer before wiping your hard drive.
* Create a [bootable USB installer for macOS](https://support.apple.com/en-us/HT201372 "https://support.apple.com/en-us/HT201372").
* Integrate other cloud services into your Dotfiles process (Dropbox, Google Drive, etc.).
* Find inspiration and examples in other Dotfiles repositories at [dotfiles.github.io](https://dotfiles.github.io/ "https://dotfiles.github.io/").
* And last, but hopefully not least, [**take my course, *Dotfiles from Start to Finish-ish***](https://www.udemy.com/course/dotfiles-from-start-to-finish-ish/?referralCode=445BE0B541C48FE85276 "Learn Dotfiles from Start to Finish-ish on Udemy")!
