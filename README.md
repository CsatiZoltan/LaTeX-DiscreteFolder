# LaTeX-DiscreteFolder
Put LaTeX metafiles to a different subfolder

## Introduction
The many files LaTeX generates make me often hard to find the relevant files, like the .pdf or .tex. I was looking for a solution to place the "unnecessary" files to another folder. Searching the net, I managed to solve it. As I thought it was useful, I share it with you.

## Prerequisites
* Windows operating system (the script was written for the Windows command prompt)
* [MiKTeX](http://miktex.org/) (because of the [-aux-directory](http://docs.miktex.org/manual/pdftex.html) flag)

## Usage
Put all your .tex and .bib files into a folder you desire (the path must **NOT** contain spaces). Open a command prompt from that folder. Then type
```
makelatex fileName
```
where `fileName` is your main .tex file. Give just the file name without the extension! The generated .pdf will be put into the main folder (i.e. where your main .tex file is), the other files are placed to the created metafiles folder.

## References
* A [texblog article](http://texblog.org/2015/08/20/hiding-latex-metafiles-from-project-directory/j) gave me the main idea. Commenter P suggested to use the -aux-directory flag under Windows. It works with MiKTeX, I have no experience with TeX Live. This option enables us to put not only the output files, but also the auxiliary files into the metafiles folder.
* Basically the information in the previous point is mainly used but, there are sevaral StackExchange threads about it I looked through, like [this](http://tex.stackexchange.com/questions/7265/need-aux-file-in-separate-folder) or [this](http://tex.stackexchange.com/questions/11123/prevent-pdflatex-from-writing-a-bunch-of-files).
