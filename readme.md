#less4f v0.0.2
---
[![Written in: Fantom](http://img.shields.io/badge/written%20in-Fantom-lightgray.svg)](http://fantom.org/)
[![pod: v0.0.2](http://img.shields.io/badge/pod-v0.0.2-yellow.svg)](http://www.fantomfactory.org/pods/afLess4f)
![Licence: MIT](http://img.shields.io/badge/licence-MIT-blue.svg)

## Overview

*less4f is a support library that aids Alien-Factory in the development of other libraries, frameworks and applications. Though you are welcome to use it, you may find features are missing and the documentation incomplete.*

Less4f is a wrapper around [Less4j 1.11.0](https://github.com/SomMeri/less4j) - a pure Java compiler for Less.

Less4f is a simple command line utility program for compiling `.less` files into `.css` files. It was created for compiling [Twitter Bootstrap](http://getbootstrap.com/) templates and has been successfully tested with Bootstrap v3.3.4.

Less4f is a happy alternative to installing Less, Node.js, Grunt, and half the internet just to compile a couple of text files!

## Install

Install `less4f` with the Fantom Repository Manager ( [fanr](http://fantom.org/doc/docFanr/Tool.html#install) ):

    C:\> fanr install -r http://repo.status302.com/fanr/ afLess4f

To use in a [Fantom](http://fantom.org/) project, add a dependency to `build.fan`:

    depends = ["sys 1.0", ..., "afLess4f 0.0"]

## Documentation

Full API & fandocs are available on the [Fantom Pod Repository](http://pods.fantomfactory.org/pods/afLess4f/).

## Quick Start

Once installed, run `Less4f` from the command line:

```
C:\> fan afLess4j [-x] <lessIn> <cssOut>
```

Where `lessIn` and `cssOut` are files. OS dependent and / or URI notation may be used. Examples:

```
C:\> fan afLess4j -x C:\projects\website.less C:\projects\website.css

C:\> fan afLess4j -x file:/C:/projects/website.less file:/C:/projects/website.css
```

## Dependencies

Less4f is designed to be used a standalone application and as such, comes bundled with the following jars:

- `less4j-1.11.0.jar`
- `antlr-runtime-3.5.2.jar`
- `commons-beanutils-1.8.3.jar`
- `commons-io-2.3.jar`
- `commons-logging-1.1.1.jar`

