# Latex thesis example
This basic example of thesis document for LaTeX have been prepared by default for my book - Przygotowanie pracy dyplomowej wraz z systemem Latex - but it also could be good example of thesis for my colleagues - students of University of Economics in Cracow.

## Features

  - Full support of `biblatex` + `biber`
  - Polish fonts support (also for listings package);
  - UTF-8 encoding by default;
  - Many class options for personal confuguation;
  - Autoconfiguration for male or female formating of thesis;
  - Easy to set global variables;
  - Ready for Windows and Linux OSs;
  - Download repository, compile and have great fun;


## Basic setup

1. [Install neccesary bibraries like: TeXLive or MikTeX](#installation-of-additional-libs)
2. [Copy repository to your hard drive](#copy-repo)
3. [Compile document](#compile-document)
3. [Become a wizzard](#become-a-wizzard)

### <a name="installation-of-additional-libs"></a> Installation of TeXLive or MikTeX

Firstly you need to install La(Tex) libraries --- If you have *TexLive*, *MikTeX* or similar libraries packages system all ready installed and also biber as well, you can skip this subpoints ;)

##### Linux
For most linux distributions based on [Debian](https://www.debian.org/) like: (ex: [Ubuntu](http://www.ubuntu.com/), [Mint](http://www.linuxmint.com/), [ElementaryOS](http://elementaryos.org/), etc) you could install **texlive** by run this command in terminal:

    sudo apt-get install texlive-full biber

**apt-get** program will install whole bunch of *Tex* libs (~1.5GB). It's a lot of stuff and contains more libs then we'll ever use, but the main advantage of this setp is that you probably won't get any errors like missing common libraries while you'll be writting your thesis --- less errors, less worries - simple as that ;)

##### Windows
You can download [Miktex](http://miktex.org/). It's more-less an equivalent of *Texlive* libs and it's build specially for Windows systems. On Miktex's website you will find all information you need to use this piece of software.

### <a name="copy-repo"></a>Copy this repository to your hard drive:

    cd ~/Pulpit
    git clone git@github.com:egel/latex-example.git

  or download manualy by clicking `Download` button on the bottom of right sidebar.

### <a name="compile-document"></a>Compile whole document:

    $ pdflatex main.tex
    $ pdflatex main.tex
    $ biber bibliografia.tex
    $ pdflatex main.tex

  or use for example some LaTeX editors like **TexStudio** ([TexStudio website](http://texstudio.sourceforge.net/)).
  It's cross platform editor (Windows, OSX, Linux, OS/2) and has got predefine buttons to compile whole document by one click (default shortcuts: `F1` - quick compile, `F11` - bibliography compile)

  > Note: If you want to compile bibliography according to this project, you need to change default option of Bibtex: `bibtex %.aux` to ``. To be more precise, this step change default, old "bibtex" bibliography compilator to newer "biblatex + biber" for better bibliography management.

### <a name="become-a-wizzard"></a>Become a wizzard
All done, and now you can give a try to become sophisticated LaTeX wizzard :)


## Class options
All class options can be found in its repository: [uek-latex-thesis-class](https://github.com/egel/uek-latex-thesis-class).

> All document's variables are defined in `main.tex` file and have `global` suffix;


## Maintenance
Quick command for remove unnecessary files from thesis root folder (linux)
```
rm *.aux *.log *.lot *.lol *.lof *.toc *.out *.dvi *.bbl *.bcf *.blg *.run.xml *.gz *.gz\(busy\)
```


### Sublime Text project files
If you not using Sublime Text Editor you can easly remove `thesis.sublime-project` file, but it's not necessary. This file has no influence for rest of files while compiling project. It's only setup file for Sublime's project.


## Enhancements, bugs, questions or errors
All things according, please report [here](https://github.com/egel/latex-thesis-example/issues).


## License
All rights reserved.
