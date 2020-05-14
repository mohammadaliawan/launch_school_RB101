# Rubocop

## What is Rubocop?

Rubocop is a static code analyzer. It analyzes your code and offers advice about its style format as well as possible logical errors.

The Rules are called cops. All cops are further grouped into departments.

1. Department: Style Format:

Enforces Good coding Style. Follows the Ruby Style Guide from Github.

2. Code Linting:

A code linter is a program that inspects your code for possible logical errors or code smells.

Serves as a first level of defense against obvious problems.


## Installation

Rubocop is a gem.

$ gem install rubocop --version 0.46.0

To run rubocop: rubocop command takes a ruby file as an argument:

$ rubocop test.rb

The output of the above command provides the following:

1. How many files were inspected
2. The department of offense- C for Convention, W for Warning, E for Error, F for Fatal Eror
3. List of Offenses in that department.
  Each offense contains the filename, line number, and the column number and the department, actual piece of code where the offense occured.


## Configuring Rubocop:

Rubocop looks for a .rubocop.yml file inthe directory its executed in and applies the configuration settings in that file.

We can tell rubocop to ignore which rules and enforce which ones.