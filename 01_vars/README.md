# Performance // bare minimum stacks

<!-- vim-markdown-toc Marked -->

* [Overview](#overview)
* [Prepare execution](#prepare-execution)
* [Execution](#execution)

<!-- vim-markdown-toc -->

## Overview

Simple Stack configuration, which only has one component with no vars.

## Prepare execution

The scripts will create `400` stacks. The terraform
module is a simple hello world module.

```sh
./scripts/create_stacks.sh
```

## Execution

simply run:

```sh
time atmos list stacks
time atmos list components -s site-1
```

<!-- vim: set fenc=utf-8 spell spl=en: -->
