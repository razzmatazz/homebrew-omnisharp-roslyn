# OmniSharp-Roslyn Homebrew Tap

[Homebrew](http://brew.sh/) tap for installing [omnisharp-roslyn](https://github.com/OmniSharp/omnisharp-roslyn) on macOS.

In ideal world the `omnisharp-roslyn` server installation would be done by editor plugins but alas we are not there yet with some of the editors/platforms, e.g. omnisharp-emacs, omnisharp-vim(?).

## Installation

First tap the repository with the following:

`brew tap omnisharp/omnisharp-roslyn`

Update brew:

`brew update`

Then you can install omnisharp with:

 - `brew install omnisharp-mono`

or

 - `brew install omnisharp-netcoreapp`.

`omnisharp-netcoreapp` version supports the .NET Core-based development while `omnisharp-mono` can be used for ordinary .csproj/.sln projects. NOTE: this description maybe be out of date/incorrect. Try both to see which one fits you if unsure.

You cannot install both `omnisharp-mono` and `omnisharp-netcoreapp` versions at the same time for now.

## Dependencies

The `omnisharp-mono` formula specifies `mono` as dependency and will install it if `mono` was not installed via homebrew. If you have a pre-existing non-homebrew install of mono, you can use `--without-mono` with the install command to skip installing those via brew.

## Upgrading

Like other homebrew formula, when updates are available you can upgrade with `brew update` and `brew upgrade omnisharp(-mono|-netcoreapp)`.
