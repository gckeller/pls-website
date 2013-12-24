---
title: Software 
---

[Haskell](http://haskell.org) Code
----------------------------------

### Data Parallel Haskell: a high-performance extension to GHC

The [Data Parallel Haskell](project/dph/) project is about adding
support for nested data paralellism to the [Glasgow Haskell Compiler
(GHC).](http://haskell.org/ghc/) [Nested data
parallelism](http://www.cs.cmu.edu/~scandal/cacm/cacm2.html) enables a
high-level description of a wide range of parallel algorithms, while
supporting a language-based cost model. It is also a rather
[portable](http://www.cse.unsw.edu.au/~chak/papers/#ndpport) form of
parallelism, although our current focus for Data Parallel Haskell is SMP
hardware, and especially,
[multi-core](http://en.wikipedia.org/wiki/Multi-core) processors.

### Data.Array.Accelerate: accelerated array processing in Haskell

[Data.Array.Accelerate](project/accelerate/) is a Haskell library that
provides an embedded language of collective operations on regular,
multidimensional arrays. It is currently under active development with
the aim of providing online compilation of the embedded array language
to a variety of high-performance architectures, such as programmable
GPUs.

### C-\>Haskell: Haskell bindings to C libraries made easy

[C-\>Haskell](haskell/c2hs/) is an interface generator for Haskell
bindings to C libraries. Most of the Gtk+HS binding is generated using
C-\>Haskell.

### λFeed: Generate your own news feeds, blog feeds, podcasts, etc.

[λFeed](haskell/lambdaFeed/) generates RSS 2.0 feeds and corresponding
HTML from a non-XML, human-friendly format for channels and news items.
The tool is in an early development phase and very hackable.

### VersionTool: Integrate version information into program sources

[VersionTool](haskell/VersionTool/) extracts version information from a
[`.cabal`](http://haskell.org/cabal/) file and from
[darcs](http://darcs.net/), and then, inserts it into a source file. A
tiny tool that you can add easily add to your project.

### Gtk+HS: A library for powerful GUIs in Haskell

*This project is no longer under active development.* Together with a
some other Haskell hackers, I am currently developing a [GTK+ Binding
for Haskell](haskell/gtk/). It is already usable for GUIs of medium
complexity and also features support for OpenGL via [Sven
Panne's](http://www.informatik.uni-muenchen.de/~Sven.Panne/)
[HOpenGL](http://haskell.org/HOpenGL/) and
[GtkGLArea](http://www.student.oulu.fi/~jlof/gtkglarea/) as well as a
binding to a widget embedding the rendering engine of the
[Mozilla](http://mozilla.org/) web browser and libglade. There an
experimental wrapper for functional GUI programming in the GTK+ binding
now: [iHaskell.](haskell/gtk/#iHaskell) It is based on the [Haskell
Ports Library,](haskell/ports/) a new abstraction for modelling
time-dependent variables in Haskell.
