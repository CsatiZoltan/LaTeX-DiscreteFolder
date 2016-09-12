ECHO OFF

:: Create a subdirectory containing the metafiles
IF NOT exist "%cd%"\metafiles (mkdir metafiles)

:: Obtain the command-line argument  (name of the .tex file)
SET fileName=%1

:: Run pdflatex
pdflatex -output-directory="%cd%" -aux-directory=metafiles %fileName%.tex

:: Run biber
biber metafiles\%fileName%.bcf

:: Create the nomenclature by invoking MakeIndex
makeindex %fileName%.nlo -s %fileName%.ist -o %fileName%.nls

:: Run pdflatex again to process the .nls file
pdflatex -output-directory="%cd%" -aux-directory=metafiles %fileName%.tex


