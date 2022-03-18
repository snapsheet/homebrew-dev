# Snapsheet Dev Homebrew Tap

This a pre-release environment, install formulas from here at your own risk.

* [Stable releases can be found here](https://github.com/snapsheet/homebrew-core)

## Installation
These packages require a GitHub token to be set up in your environment with the name `HOMEBREW_GITHUB_API_TOKEN`.

For the following, replace `<formula>` with the name of the package you are trying to install.

You can add this to your shell profile, or prefix it to the brew commands.
```
HOMEBREW_GITHUB_API_TOKEN=xxxxx brew ...
```

Install a specific formula from this repository:
```
brew install snapsheet/dev/<formula>
```

## Local Development
To test locally, install the formula from source. Clone this repository and `cd` to it from a CLI terminal.

Run The following to install a formula locally:
```
brew install --debug --build-from-source Formula/<formula>.rb
```