---
title: Home 
isHome: True
---

Group Meeting & Reading Group
-----------------------------

We have a weekly group meeting, currently Tuesdays at noon in the K17
meeting room and a fortnightly [reading group](/pages/99-readinggroup.html).

Teaching
--------

Courses currently taught by Manuel Chakravarty or Gabriele Keller:

-   *[Principles of Programming Languages
    (COMP3161/COMP9161)](https://www.openlearning.com/unsw/courses/COMP3161)*
-   *[Software System Design and Implementation
    (COMP3141)](http://www.cse.unsw.edu.au/~cs3141/)*
-   *[Language-Based Software Safety
    (COMP4181/COMP9181)](http://www.cse.unsw.edu.au/~cs4181/)*
-   *[Computing 2
    (COMP1927)](https://wiki.cse.unsw.edu.au/info/COMP1927)*

Research
--------

We are interested in a wide range of research topics concerning
programming languages and associated software systems with a particular
focus on the intersection of theory and practice. This, quite naturally,
makes computational calculi and programming languages derived from these
calculi an integral part of our work. Hence, much of our attention is
focused on functional programming, which is the most successful
programming paradigm founded on a rigorous mathematical discipline. It's
foundation, the lambda calculus, has an elegant computational theory and
is arguably the smallest universal programming language. As such, the
lambda calculus is also crucial to understand the properties of language
paradigms other functional programming. We apply insights derived from
foundational studies to areas that span programming language design,
compilers, parallel and high-performance computing, and computer
security. Within UNSW, we cooperate with the CORG group (programming
language implementations, compiler optimisations and dynamic
compilation). Moreover, we are involved in the ERTOS (Embedded,
Real-Time and Operating Systems) program of NICTA. We collaborate with a
number of international partners, including close work with the GHC team
at Microsoft Research Cambridge.

Projects
--------

### [Data Parallel Haskell (DPH)](http://www.haskell.org/haskellwiki/GHC/Data_Parallel_Haskell)

Data Parallel Haskell (DPH) is one of the core projects of our group and
aims at providing full support for nested data parallelism for Haskell
targeting multicore CPUs. The current experimental implementation is
available as an extension to the Glasgow Haskell Compiler as a set of
cabal packages.

### [Repa](http://repa.ouroborus.net)

Repa is a Haskell library which supports parallel multidimensional
matrix calculations and stencil operations. These operations are more
specialised than nested data parallelism, but play a central role in a
large range of numerical computations. Due to their more specific
nature, these computations can be optimised more aggressively.

### [Accelerate](http://hackage.haskell.org/package/accelerate)

Accelerate is a domain-specific array language embedded in Haskell,
which generates code exploiting the parallel capabilities of graphical
processing units (GPU), for applications in areas including physical
simulations and computer vision.

### [Trustworthy File Systems](http://www.ssrg.nicta.com.au/projects/TS/filesystems.pml)

This project is a cooperation with researchers from the Software Systems
Research Group at NICTA investigating the automated synthesis of
file-system code (and matching correctness proofs) from formal
specifications. More precisely, a file system is specified as an OS
interface, an on-disk data structure, and a high-level behavioural
description matching the two.

### [The Disciplined Disciple Compiler (DDC)](http://disciple.ouroborus.net)

DDC is a research compiler used to investigate program transformation in
the presence of computational effects. It compiles a family of strict
functional core languages and supports region, effect and closure
typing. Programs can be written in either a pure/functional or
effectful/imperative style, and one of our goals is to provide both
styles coherently in the same language.

### [Iron Lambda](http://iron.ouroborus.net)

Iron Lambda is a collection of [Coq](http://coq.inria.fr%20Coq)
formalisations for functional languages of increasing complexity. It
fills part of the gap between the end of the [Software
Foundations](http://www.cis.upenn.edu/~bcpierce/sf/) course and what
appears in current research papers.

### [Gloss](http://gloss.ouroborus.net)

Gloss hides the pain of drawing simple 2D graphics in Haskell behind a
nice data structure and a couple of display functions. Used in 1st year
CompSci at the ANU and UNSW. The library uses the GHC OpenGL binding,
but you won't have to worry about any of that. Get something cool on the
screen in under 10 minutes.
