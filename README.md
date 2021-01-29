# auto-formatter

[![Language](https://img.shields.io/badge/language-shell_script-brightgreen?style=flat-square)](https://en.wikipedia.org/wiki/Shell_script)

This repository is for the **GitHub Action** to run a **auto-formatter**.
It is a simple combination of various libraries, written in `bash`, to help formate your code automatically.

## Table of contents

- [Version](#version)
- [Credits](#credits)
- [How it Works](#how-it-works)
- [Supported Linters](#supported-linters)
- [How to use](#how-to-use)
- [Example connecting GitHub Action Workflow](#example-connecting-github-action-workflow)
- [Add Super-Linter badge in your repository README](#add-super-linter-badge-in-your-repository-readme)
- [Environment variables](#environment-variables)
- [Motivation](#motivation)
- [Build status](#build-status)
- [Code style](#code-style)
- [Tests](#tests)
- [Contribute](#contribute)
- [Credits](#credits)
- [License](#license)


## Version

Current version keep only _python_ format. In next version more languages will be available.

## How it Works

The auto-formatter launches linters that can formate code, do this and commit to your repository.

## Supported Linters

Developers on **GitHub** can call the **GitHub Action** to formate their code base with the following list of libraries:

| _Language_                       | _Library_                                                                                                                                                                       |
| -------------------------------- | ---------------------------------------------------------- |
| **NodeJs**                       | [eslint](https://eslint.org/)                              |
| **Python**                       | [autopep8](https://github.com/hhatto/autopep8)             |
| **CSS**                          | [stylelint](https://stylelint.io/)                         |
| **MarkDown**                     | [markdownlint](https://github.com/DavidAnson/markdownlint) |                                                                                                                                           |
| **HTML**                         | [clean-html](https://www.npmjs.com/package/clean-html)     |

## How to use

To use this **GitHub** Action you will need to complete the following:

1. Create a new file in your repository called `.github/workflows/formatter.yml`
2. Copy the example workflow from below into that new file, no extra configuration required
3. Commit that file to a new branch
4. Open up a pull request and observe the action working
5. Enjoy your more _stable_, and _cleaner_ code base

## Example connecting GitHub Action Workflow

In your repository you should have a `.github/workflows` folder with **GitHub** Action similar to below:

- `.github/workflows/formatter.yml`

This file should have the following code:

```yml
---
####################
####################
## Auto Formatter ##
####################
####################
name: Formate Code

#
# Documentation:
# https://github.com/mezgoodle/auto-formatter
#

#############################
# Start the job on all push #
#############################
on:
  push:
    branches: [master]
  pull_request:
    branches-ignore: [master]
    # Remove the line above to run when pull-requesting to master

###############
# Set the Job #
###############
jobs:
  build:
    # Name the Job
    name: Formate Code
    # Set the agent to run on
    runs-on: ubuntu-latest

    ##################
    # Load all steps #
    ##################
    steps:
      ##########################
      # Checkout the code base #
      ##########################
      - name: Checkout Code
        uses: actions/checkout@v2
        with:
          # Full git history is needed to get a proper list of changed files within `auto-formatter`
          fetch-depth: 0

      ################################
      # Run Auto-formatter against code base #
      ################################
      - name: Auto-Formatter
        uses: mezgoodle/auto-formatter@v1.0.1
        env:
            GITHUB_TOKEN: ${{ secrets.TOKEN }}
```

## Add Super-Linter badge in your repository README

You can show Super-Linter status with a badge in your repository README

![Auto formate code](https://github.com/mezgoodle/auto-formatter/workflows/Auto%20formate%20code/badge.svg)

Format:

```markdown
![Auto formate code](https://github.com/<OWNER>/<REPOSITORY>/workflows/Auto%20formate%20code/badge.svg)
```

Example:

```markdown
![Auto formate code](https://github.com/mezgoodle/auto-formatter/workflows/Auto%20formate%20code/badge.svg)
```

## Environment variables

The super-linter allows you to pass the following `ENV` variables to be able to trigger different functionality.

_Note:_ All the `VALIDATE_[LANGUAGE]` variables behave in a very specific way:

- If none of them are passed, then they all default to false.
- If any one of the variables are set to true, we default to leaving any unset variable to false.
- If any one of the variables are set to false, we default to leaving any unset variable to false.

| **ENV VAR**                        | **Default Value**     | **Notes**                                                                                                                                                                        |
| ---------------------------------- | --------------------- | ----------------------------------------------------------------------- |
| **python**                         | `false`               | Flag to enable or disable the formatting process of the Python language.|                                                                                   |

## Motivation

At first I was inspired by this [project](https://github.com/github/super-linter). I wanted to do the same, but with formatting. It is also a great opportunity to learn how to work with Docker and how to create your own GitHub workflow. Also it was the amazing time working together with my dad.

## Build status

Here you can see build status of [continuous integration](https://en.wikipedia.org/wiki/Continuous_integration):

[![Build Status](https://travis-ci.com/mezgoodle/auto-formatter.svg?branch=master)](https://travis-ci.com/mezgoodle/auto-formatter)
![Lint Code Base](https://github.com/mezgoodle/auto-formatter/workflows/Lint%20Code%20Base/badge.svg)

## Code style

I'm using [Codacy](https://www.codacy.com/) to automate my code quality.

[![Codacy Badge](https://app.codacy.com/project/badge/Grade/cc0fa051bd8449d29556516b289560bc)](https://www.codacy.com/gh/mezgoodle/auto-formatter/dashboard?utm_source=github.com&amp;utm_medium=referral&amp;utm_content=mezgoodle/auto-formatter&amp;utm_campaign=Badge_Grade)

## Tests

I have made [Dockerfile.test](https://github.com/mezgoodle/auto-formatter/blob/master/Dockerfile.test) and [test.sh](https://github.com/mezgoodle/auto-formatter/blob/master/action/test.sh) quite similiar to main shell script. Then make testing with [TravisCI](https://travis-ci.org/).

## Contribute

Pull requests are welcome. For major changes, please open an issue first to discuss what you would like to change. Also look at the [CONTRIBUTING.md](https://github.com/mezgoodle/auto-formatter/blob/master/CONTRIBUTING.md).

## Credits

Links to any repo, articles which inspired me to build this project:

- [Python Docker](https://hub.docker.com/_/python)
- [Nyukers Docker](https://github.com/nyukers/aformat)
- [Environment variables](https://docs.github.com/en/actions/configuring-and-managing-workflows/using-environment-variables)
- [run-node-formatter](https://github.com/MarvinJWendt/run-node-formatter)
- [alpine-packages](https://pkgs.alpinelinux.org/packages) 

## License

MIT © [mezgoodle](https://github.com/mezgoodle)
