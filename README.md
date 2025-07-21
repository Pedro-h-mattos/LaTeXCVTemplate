A template for creating a professional-looking, PDF-format curriculum vitae or résumé. Aimed at users with limited or no prior experience using a typesetting software such as LaTeX.

## Get Started

### Requirements

A TeX distribution is the only software dependency necessary for working on this project. Depending on your OS, MikTex, TeXLive or MacTeX are good options &mdash; they are free and open-source through [The LaTeX Project](https://www.latex-project.org/get/).

Also consider installing a dedicated GUI (e.g. TeXworks or TeXstudio) for working with TeX files. This will make editing and compiling TeX files easier.

Alternatively, [Overleaf](https://www.overleaf.com/) is an cloud-based LaTeX editor that doesn't require any local installation.

### Step One: Download
This project comprises only the files `articleCV.cls`, `CVexample.tex` and `info.sty`, and the instruction manual `userguide.pdf`.

There are two ways to download this project.

#### Download the Full Repository
1. Navigate to Pedro-h-mattos/LaTeXCVTemplate.
2. Above the list of files, click **<> Code**.
3. Click **Download ZIP**.
4. On your local computer, unzip the file `LaTeXCVTemplate-main.zip`.

This will download the entire repository as a .zip file; including the files `README.md` and the License, which are not necessary for the project.

#### Download Individual Files
1. Open a file in GitHub by clicking on its name.
2. On the top-right, click **Download raw file**.
4. Repeat steps 1-2 for the other files.
3. Once downloaded, save your files in a new folder (e.g. myresume).

Either way, you should have obtained a copy of the project files that you can edit on your local computer. 

### Step Two: Usage 
Open the command terminal and run the command: 

```
pdflatex CVexample.tex
```

Or open `CVexample.pdf` within a TeX editor and compile it with the option `pdfLaTeX`.

Doing either should output the document `CVexample.pdf`. This is a template you can use to build a CV or résumé.

If you are already familiar with LaTeX, you can edit `CVexample.tex` directly. Otherwise, open the document `userguide.pdf`, which contains a guide to editing your template. 