#efan v0.0.0
---
[![Written in: Fantom](http://img.shields.io/badge/written%20in-Fantom-lightgray.svg)](http://fantom.org/)
[![pod: v0.0.0](http://img.shields.io/badge/pod-v0.0.0-yellow.svg)](http://www.fantomfactory.org/pods/afLess4f)
![Licence: MIT](http://img.shields.io/badge/licence-MIT-blue.svg)

## Overview

*efan is a support library that aids Alien-Factory in the development of other libraries, frameworks and applications. Though you are welcome to use it, you may find features are missing and the documentation incomplete.*

`Less4f` is a wrapper around [Less4j 1.11.0](https://github.com/SomMeri/less4j) - a pure Java compiler for Less.

Less4f is a simple command line utility program for compiling `.less` files into CSS.

## Install

Install `efan` with the Fantom Repository Manager ( [fanr](http://fantom.org/doc/docFanr/Tool.html#install) ):

    C:\> fanr install -r http://repo.status302.com/fanr/ afLess4f

To use in a [Fantom](http://fantom.org/) project, add a dependency to `build.fan`:

    depends = ["sys 1.0", ..., "afLess4f 0.0+"]

## Documentation

Full API & fandocs are available on the [Status302 repository](http://repo.status302.com/doc/afLess4f/#overview).

## Quick Start

1). Once installed, run `Less4f` from the command line:

```
C:\> fan afLess4f

```

## Dependencies

`Less4f` is designed to be used a standalone application and as such, comes pre-bundled with the following jars:

- `less4j-1.11.0.jar`
- `antlr-runtime-3.5.2.jar`
- `commons-beanutils-1.8.3.jar`
- `commons-io-2.3.jar`
- `commons-logging-1.1.1.jar`

