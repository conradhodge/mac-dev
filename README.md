# macOS development environment

![build](https://github.com/conradhodge/mac-dev/workflows/CI/badge.svg)

This describes how to setup a macOS development environment using [Ansible](https://www.ansible.com/) scripts.

## Setup

You will need to install some pre-requisites ([Homebrew](https://brew.sh/) and [Ansible](https://www.ansible.com/)) prior to running the provisioning scripts.


```shell
./setup.sh
```

Then you can run the provision command.

```shell
make provision
```

This will:
- Setup [zsh](https://www.zsh.org/) and [oh-my-zsh](https://ohmyz.sh/) for terminal
- Install and update the following brew packages (not exhaustive)
  - [AWS CLI](https://aws.amazon.com/cli/)
  - [Azure CLI](https://docs.microsoft.com/en-us/cli/azure/)
  - [cowsay (Very important)](https://github.com/tnalpgge/rank-amateur-cowsay)
  - [curl](https://curl.haxx.se/docs/manpage.html)
  - [git](https://git-scm.com/)
  - [GitHub CLI](https://github.com/cli/cli)
  - [gnu-sed](https://www.gnu.org/software/sed/) Please note: This will be set as default `sed` so you do not need to used `gsed`
  - [Go](https://golang.org/)
  - [jq](https://stedolan.github.io/jq/)
  - [node@16](https://nodejs.org/en/)
  - [pipenv](https://pipenv.pypa.io/en/latest/)
  - [pyenv](https://github.com/pyenv/pyenv)
  - [ShellCheck](https://www.shellcheck.net/)
  - [Terraform](https://www.terraform.io/)
  - [Terragrunt](https://terragrunt.gruntwork.io/)
  - [TFLint](https://github.com/terraform-linters/tflint)
  - [vim](https://www.vim.org/)
  - [wget](https://www.gnu.org/software/wget/)
  - [XMLStarlet](http://xmlstar.sourceforge.net/)
  - [yq](https://mikefarah.gitbook.io/yq/)
- Install the following brew casks
  - [.NET SDK 6.0](https://dotnet.microsoft.com/en-us/)
  - [Visual Studio Code](https://code.visualstudio.com/)
- Install some node packages
  - [AWS CDK](https://aws.amazon.com/cdk/)
  - [Typescript](https://www.typescriptlang.org/)
