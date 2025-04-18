# My dotfiles

This directory contains the dotfiles for my system

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

or

```
sudo apt-get install git
```

### Stow

```
pacman -S stow
```

or

```
sudo apt-get install stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git

```
$ git clone git@github.com:riz1-k/dotfiles.git
$ cd dotfiles
```

then use GNU stow to create symlinks

```
$ stow .
```
