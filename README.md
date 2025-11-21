# dotfiles

Dotfiles for all my machines.

## Requirements

Ensure you have the following installed on your system

### Git

```
pacman -S git
```

### Stow

```
pacman -S stow
```

## Installation

First, check out the dotfiles repo in your $HOME directory using git.

```
$ git clone git@github.com:mjlawrence91/dotfiles.git
$ cd dotfiles
```

Then use GNU stow to create symlinks.

```
$ stow .
```

## References

- [Dreams of Autonomy video](https://www.youtube.com/watch?v=y6XCebnB9gs)
