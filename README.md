# Atmos Performance Test

<!-- vim-markdown-toc Marked -->

* [Overview](#overview)

<!-- vim-markdown-toc -->

## Overview

This repository tests the performance of [Atmos][Atmos] when using a lot of
stacks and components. Each folder contains scripts to generate 400 stacks.

* 01: bare minimum config - fast < 1 second
* 02: using variables - ok < 1 second
* 03: using imports - slower > 2 seconds
* 04: using multiple imports - slow > 20 seconds

[Atmos]: https://atmos.tools

<!-- vim: set fenc=utf-8 spell spl=en: -->
