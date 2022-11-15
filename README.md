Art Processors Homebrew Tap
===

This repository exists to house Homebrew formulas for AP-maintained tools.
At the moment, this consists of:
* amazon-ecs-cli.rb: our fork of Amazon's ecs-cli tool, updated to support clusters with amd64 Fargate tasks and to allow the enable_execute_command flag.

# How to use
Installing ecs-cli should be as simple as:
```bash
brew install artprocessors/tap/amazon-ecs-cli
```
# How to develop

Mac users, the easiest way to get started is to check out the repository using homebrew:
```bash
$ brew tap artprocessors/tap

```

From there, you can also symlink the resulting directory into another place on your local filesystem:
```bash
$ ln -s $(brew --repository artprocessors/tap) src/homebrew-tap
```

