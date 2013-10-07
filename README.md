# Welcome

## Description

The following exercises are designed to teach you how to work with creating
Read–eval–print loop (REPL) and Command Line Interface (CLI) applications.
Each step of this adventure you will be presented with a series of problems
to solve. Your objective is to implement the functionality defined in the
tests. You finish a step when all the tests pass. Each exercise can be solved
independently, however, each step increases in difficulty as it introduces
more complexity and different concepts.

Suggested order of exercies:

* kitchen_calculator
* waiting_room_manager
* ticket_dispenser

## Getting Started

[Fork](https://github.com/JumpstartLab/cli-exercises/fork) and clone the `cli-exercises` repository.

```bash
$ cd ~/your/project/dir
$ git clone git@github.com:USERNAME/cli-exercises.git
$ cd classes-exercises
```

Create a branch so that you're not changing `master`:

```bash
$ git checkout -b make-tests-pass
```

## Keeping in sync with the upstream repository

`origin` is your fork of the project. We'll need to connect to the upstream repository.

To do this, add a new remote named upstream that points to the JumpstartLab:

```bash
$ git remote add upstream git@github.com:JumpstartLab/classes-exercises.git
```

Then pull down the updated version of upstream:

```bash
$ git fetch upstream
```

And now make sure you're on master:

```bash
$ git checkout master
$ git branch # should say *master
```

Make master point to the exact commit that upstream/master is pointing at:

```bash
$ git reset --hard upstream/master
```