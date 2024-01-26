Art Processors Homebrew Tap
===

This repository exists to house Homebrew formulas for AP-maintained tools.
At the moment, this consists of:
* `amazon-ecs-cli.rb`: our fork of Amazon's ecs-cli tool, updated to support clusters with amd64 Fargate tasks and to allow the enable_execute_command flag.
* `gazelle.rb` [internal]: Gazelle Schema code generator and validator.
* `poeditor.rb` [internal]: POEditor CLI tool.
* `vxbundler.rb` [internal]: Vixen content bundle and asset downloader.

# How to use

Installing `ecs-cli` should be as simple as:
```bash
brew install artprocessors/tap/amazon-ecs-cli
```

To install internal tools such as `gazelle` or `poeditor`, first set the `HOMEBREW_GITHUB_API_TOKEN` environment variable to your personal GitHub API Token, e.g.:
```bash
export HOMEBREW_GITHUB_API_TOKEN=your-API-token
brew install artprocessors/tap/poeditor
```

You can create an API token on [this page](https://github.com/settings/tokens).

# How to develop

Mac users, the easiest way to get started is to check out the repository using homebrew:
```bash
$ brew tap artprocessors/tap
```

From there, you can also symlink the resulting directory into another place on your local filesystem:
```bash
$ ln -s $(brew --repository artprocessors/tap) src/homebrew-tap
```

