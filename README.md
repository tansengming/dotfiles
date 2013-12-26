Dotfiles
========

You have your dotfiles and I have mine.

Installation
====

```bash
brew install stow
cd ~
git clone git@github.com:tansengming/dotfiles.git
cd dotfiles
stow wget # to symlink .wgetrc from the dotfiles dir to home
```