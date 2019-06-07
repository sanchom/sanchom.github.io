#lang scribble/manual

@(require (for-label racket))

@title{citations-mcgill}
@author{Sancho McCann}

@defmodule[pollen/citations-mcgill]

This module provides citation management and rendering for use
with the Pollen module. It lets you:

@itemlist[@item{declare works by providing their metadata (title, author, etc.)}
          @item{produce tagged x-expressions with the citations formatted according to the McGill style}
          @item{manage back-references to previous instances of a citation within a document}]

This requires the end-user to use ◊declare-work within the Pollen source code. It requires
your pollen project to make a call to ◊process-citations within within its footnote tag
context in order that this module be able to manage reference tracking and back-references.